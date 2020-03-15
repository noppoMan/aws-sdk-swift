//
//  AWSService.swift
//  AWSSDKSwift
//
//  Created by Yuki Takei on 2017/03/28.
//
//

import Foundation
import SwiftyJSON

/*
 List of model tags we are currently not processing:
 exception: This appears to be used to tag errors returned by AWS
 synthetic: not dealt with, always seems to pair up with "exception"
 error: details http return status for error, also can include a "code" and flag "senderFault"
 fault: not sure how this is different from "exception". Looks to be server issues, most return 5xx http status
 sensitive: indicates sensitive data
 wrapper: not sure what this is
 box: not sure what this is
 streaming:
 eventstream:
 event: pairs with "eventstream"
 xmlOrder: defines order of members in xml (GetMetricStatisticsInput,PutMetricAlarmInput)
 timestampFormat: need to deal with "unixTimestamp" for MediaConvert
 documentation: additional documentation, only used once in apigateway
 */

enum AWSServiceError: Error {
    case eventStreamingCodeGenerationsAreUnsupported
}

struct AWSService {
    let apiJSON: JSON
    let paginatorJSON: JSON
    let docJSON: JSON
    let endpointJSON: JSON
    var shapes: [Shape] = []
    var operations: [Operation] = []
    var paginators: [Paginator] = []
    var errors: [ErrorShape] = []
    var shapeDoc: [String: [String: String]] = [:]
    var shapePostProcessOperations: [(name: String, operation: ShapeOperation)] = []

    var version: String {
        return apiJSON["metadata"]["apiVersion"].stringValue
    }

    var jsonVersion: ServiceProtocol.Version? {
        if let version = apiJSON["metadata"]["jsonVersion"].string {
            let componets = version.components(separatedBy: ".")
            return ServiceProtocol.Version(major: Int(componets[0])!, minor: Int(componets[1])!)
        }

        return nil
    }

    var serviceProtocol: ServiceProtocol {
        if let version = jsonVersion {
            return ServiceProtocol(name: apiJSON["metadata"]["protocol"].stringValue, version: version)
        }
        return ServiceProtocol(name: apiJSON["metadata"]["protocol"].stringValue)
    }

    var endpointPrefix: String {
        return apiJSON["metadata"]["endpointPrefix"].stringValue
    }

    var serviceName: String {
        return apiJSON["serviceName"].stringValue.toSwiftClassCase()
    }

    var signingName: String {
        return apiJSON["metadata"]["signingName"].string ?? endpointPrefix
    }

    var serviceErrorName: String {
        return serviceName+"ErrorType"
    }

    var serviceDescription: String {
        return docJSON["service"].stringValue.tagStriped()
    }

    var endpoint: JSON {
        return endpointJSON["partitions"].arrayValue[0]["services"][endpointPrefix]
    }

    var serviceEndpoints: [String: String] {
        var endpointMap: [String: String] = [:]
        endpoint["endpoints"].dictionaryValue.forEach {
            if let hostname = $0.value["hostname"].string {
                endpointMap[$0.key] = hostname
            } else if partitionEndpoint != nil {
                // if there is a partition endpoint, then default this regions endpoint to ensure partition endpoint doesn't override it. Only an issue for S3 at the moment.
                endpointMap[$0.key] = "\(endpointPrefix).\($0.key).amazonaws.com"
            }
        }
        return endpointMap
    }

    var partitionEndpoint: String? {
        return endpoint.dictionaryValue["partitionEndpoint"]?.string
    }

    /// AWSService initialiser
    ///
    /// - Parameters:
    ///   - apiJSON: api json
    ///   - paginatorJSON: paginator json
    ///   - docJSON: documentation json
    ///   - endpointJSON: endpoint json
    init(fromAPIJSON apiJSON: JSON, paginatorJSON: JSON, docJSON: JSON, endpointJSON: JSON) throws {
        self.apiJSON = patch(apiJSON)
        self.paginatorJSON = paginatorJSON
        self.docJSON = docJSON
        self.endpointJSON = endpointJSON
        self.shapes = try parseShapes()
        (self.operations, self.errors) = try parseOperation()
        self.paginators = try parsePaginators()
        self.shapeDoc = parseDoc()

        self.applyShapeOperations(shapePostProcessOperations, shapes: &shapes)
    }

    private mutating func shapeType(from json: JSON, level: Int = 0) throws -> ShapeType {
        // TODO 10 is unspecific number to break
        if level > 10 {
            return .unhandledType
        }

        if let isEventstream = json["eventstream"].bool, isEventstream {
            throw AWSServiceError.eventStreamingCodeGenerationsAreUnsupported
        }

        let type: ShapeType
        switch json["type"].stringValue {
        case "string":
            if let enumValues = json["enum"].arrayObject as? [String] {
                type = .enum(enumValues)
            } else {
                let max = json["max"].int
                let min = json["min"].int
                let pattern = json["pattern"].string
                type = .string(max: max, min: min, pattern: pattern)
            }

        case "integer":
            let max = json["max"].int
            let min = json["min"].int
            type = .integer(max: max, min: min)

        case "blob":
            let max = json["max"].int
            let min = json["min"].int
            type = .blob(max: max, min: min)


        case "list":
            let shapeJSON = apiJSON["shapes"][json["member"]["shape"].stringValue]
            let _type = try shapeType(from: shapeJSON, level: level+1)
            let shape = Shape(name: json["member"]["shape"].stringValue, type: _type)
            let max = json["max"].int
            let min = json["min"].int
            type = .list(shape, max: max, min: min)

        case "structure":
            let payloadName = json["payload"].string
            // Note that we need to do some extra preprocessing to clean up the formatting of the structure. Sometimes we have a "flattened" object which does not have extra fields (typically named `members`) wrapping the contents. Other times we do, and need to clear that out.
            var structure: [String: ShapeType] = [:]
            for (_, _struct) in json["members"].dictionaryValue {
                let shapeJSON = apiJSON["shapes"][_struct["shape"].stringValue]
                structure[_struct["shape"].stringValue] = try shapeType(from: shapeJSON, level: level+1)
            }

            let members: [Member] = json["members"].dictionaryValue.compactMap { name, memberJSON in
                if memberJSON["deprecated"].bool == true {
                    return nil
                }
                let name = name
                let shapeName = memberJSON["shape"].stringValue
                let requireds = json["required"].arrayValue.map({ $0.stringValue })
                let dict = structure.filter({ $0.key == shapeName }).first!
                let shape = Shape(name: dict.key, type: dict.value)
                var location = Location(json: memberJSON)
                let shapeJSON = apiJSON["shapes"][shapeName]
                let memberLocationName = shapeJSON["member"]["locationName"].string
                // if member shape was flattened and has a location name then use that as the location name
                var encoding : ShapeEncoding? = nil
                // xml, query and other (ie ec2) encoding needs collection encoding information
                switch serviceProtocol.type {
                case .query, .restxml, .other(_):
                    encoding = ShapeEncoding(json: shapeJSON)
                    if encoding != nil {
                        // If this struct should be flattened, then convert from the original format to the equivalent flattened version.
                        if memberJSON["flattened"].bool == true {
                            switch encoding! {
                            case .list(_):
                                encoding = .flatList
                            case .map(_, let key, let value):
                                encoding = .flatMap(key: key, value: value)
                            default:
                                break;
                            }
                        }
                    }

                default:
                    break
                }
                // if we have a data blob, if it is the payload we need to set its encoding to blob
                if case .blob = shape.type {
                    if name == payloadName {
                        encoding = .blob
                    }
                }
                // If the list is flattened, then we need to pull out the right location name
                if memberLocationName != nil, shapeJSON["flattened"].bool == true {
                    location = Location(json: shapeJSON["member"])
                }
                var options : Member.Options = []
                if memberJSON["streaming"].bool == true {
                    options.insert(.streaming)
                }
                if memberJSON["idempotencyToken"].bool == true {
                    options.insert(.idempotencyToken)
                }
                if let memberXMLNamespace = memberJSON["xmlNamespace"]["uri"].string {
                    addShapeOperation(shapeName: shapeName, operation: SetXMLNamespaceOperation(xmlNamespace: memberXMLNamespace))
                }

                return Member(
                    name: name,
                    required: requireds.contains(name),
                    shape: shape,
                    location: location,
                    shapeEncoding: encoding,
                    options: options
                )
            }.sorted{ $0.name.lowercased() < $1.name.lowercased() }

            let shape = StructureShape(members: members, payload: json["payload"].string, xmlNamespace: nil)
            type = .structure(shape)

        case "map":
            let keyType = try shapeType(from: apiJSON["shapes"][json["key"]["shape"].stringValue], level: level+1)
            let keyShape = Shape(name: json["key"]["shape"].stringValue, type: keyType)

            let valueType = try shapeType(from: apiJSON["shapes"][json["value"]["shape"].stringValue], level: level+1)
            let valueShape = Shape(name: json["value"]["shape"].stringValue, type: valueType)

            type = .map(key: keyShape, value: valueShape)

        case "long":
            let max = json["max"].int
            let min = json["min"].int
            type = .long(max: max, min: min)

        case "double":
            let max = json["max"].int
            let min = json["min"].int
            type = .double(max: max, min: min)

        case "float":
            let max = json["max"].int
            let min = json["min"].int
            type = .float(max: max, min: min)

        case "timestamp":
            type = .timestamp

        case "boolean":
            type = .boolean

        default:
            throw ShapeTypeError.unsupported(json["type"].stringValue)
        }

        return type
    }

    private mutating func parseDoc() -> [String: [String: String]] {
        var shapeDoc: [String: [String: String]] = [:]
        for (_, json) in docJSON["shapes"].dictionaryValue {
            for (key, comment) in json["refs"].dictionaryValue  {
                let separeted = key.components(separatedBy: "$")
                guard separeted.count >= 2 else { continue }
                let shape = separeted[0]
                let member = separeted[1]
                if shapeDoc[shape] == nil {
                    shapeDoc[shape] = [:]
                }
                var _doc = shapeDoc[shape]
                _doc?[member] = comment.stringValue.tagStriped()
                shapeDoc[shape] = _doc
            }
        }
        return shapeDoc
    }

    private func parsePaginators() throws -> [Paginator] {
        var paginators: [Paginator] = []
        for (key, json) in paginatorJSON["pagination"].dictionaryValue {
            let resultKeys: [String]
            let inputTokens: [String]
            var outputTokens: [String]
            if let resultKey = json["result_key"].string {
                resultKeys = [resultKey]
            } else {
                resultKeys = json["result_key"].arrayValue.compactMap { $0.string }
            }
            if let inputToken = json["input_token"].string {
                inputTokens = [inputToken]
            } else {
                inputTokens = json["input_token"].arrayValue.compactMap { $0.string }
            }
            if let outputToken = json["output_token"].string {
                outputTokens = [outputToken]
            } else {
                outputTokens = json["output_token"].arrayValue.compactMap { $0.string }
            }
            // some output Tokens are in form "this || that". Just assume we can use "this"
            outputTokens = outputTokens.map { String($0.split(separator: "|")[0]).trimmingCharacters(in: CharacterSet.whitespaces) }
            let paginator = Paginator(
                methodName: key,
                resultKeys: resultKeys,
                inputTokens: inputTokens,
                outputTokens: outputTokens,
                limitKey: json["limit_key"].stringValue
            )
            paginators.append(paginator)
        }
        return paginators.sorted{ $0.methodName < $1.methodName }
    }

    private mutating func parseShapes() throws -> [Shape] {
        var shapes: [Shape] = []
        for (key, json) in apiJSON["shapes"].dictionaryValue {
            do {
                let shape = try Shape(name: key, type: shapeType(from: json))
                shapes.append(shape)
            } catch AWSServiceError.eventStreamingCodeGenerationsAreUnsupported {
                // Skip to generate code.
                // Becase eventstream is outside the scope of existing code generation rules.
                // It should be implemented manually.
            } catch {
                throw error
            }
        }
        return shapes.sorted{ $0.name < $1.name }
    }

    /// flag which shape are used as input shapes and output shapes
    private func setShapeUsed(shape: Shape, inInput: Bool = false, inOutput: Bool = false) {
        if inInput {
            // if value is already set then don't set again. This avoids recursive loops where shapes reference themselves
            guard shape.usedInInput != true else {return}
            shape.usedInInput = true
        }
        if inOutput {
            // if value is already set then don't set again. This avoids recursive loops where shapes reference themselves
            guard shape.usedInOutput != true else {return}
            shape.usedInOutput = true
        }

        // cannot just set children shapes to be used. The shapes that are actually output are the top level shapes. Instead I need to find the top level shape with the same name. If there isn't a toplevel shape then I use the child shape to ensure the values are propagated to any children of that child.
        switch shape.type {
        case .structure(let shape):
            shape.members.forEach { member in
                let memberShape = shapes.first(where: {$0.name == member.shape.name}) ?? member.shape
                setShapeUsed(shape: memberShape, inInput: inInput, inOutput: inOutput)
            }
        case .list(let shape,_,_):
            let memberShape = shapes.first(where: {$0.name == shape.name}) ?? shape
            setShapeUsed(shape: memberShape, inInput: inInput, inOutput: inOutput)

        case .map(let key, let value):
            let keyShape = shapes.first(where: {$0.name == key.name}) ?? key
            setShapeUsed(shape: keyShape, inInput: inInput, inOutput: inOutput)

            let valueShape = shapes.first(where: {$0.name == value.name}) ?? value
            setShapeUsed(shape: valueShape, inInput: inInput, inOutput: inOutput)

        default:
            break
        }
    }

    private mutating func parseOperation() throws -> ([Operation], [ErrorShape])  {
        var operations: [Operation] = []
        var errorShapeNames: [String] = []
        for (name, json) in apiJSON["operations"].dictionaryValue {
            for json in json["errors"].arrayValue {
                let shape = json["shape"].stringValue
                if !errorShapeNames.contains(shape) {
                    errorShapeNames.append(shape)
                }
            }

            var deprecatedMessage : String? = nil
            if json["deprecated"].bool == true {
                if let message = json["deprecatedMessage"].string {
                    deprecatedMessage = message
                } else {
                    deprecatedMessage = "\(json["name"].stringValue) is deprecated."
                }
            }

            var inputShape: Shape?
            if let inputShapeName = json["input"]["shape"].string {
                if let index = shapes.firstIndex(where: { inputShapeName == $0.name }) {
                    if let xmlNamespace = json["input"]["xmlNamespace"]["uri"].string {
                        addShapeOperation(shapeName: inputShapeName, operation: SetXMLNamespaceOperation(xmlNamespace: xmlNamespace))
                    }
                    setShapeUsed(shape: shapes[index], inInput: true)
                    inputShape = shapes[index]
                }
            }

            var outputShape: Shape?
            if let outputShapeName = json["output"]["shape"].string {
                if let index = shapes.firstIndex(where: { outputShapeName == $0.name }) {
                    setShapeUsed(shape: shapes[index], inOutput: true)
                    outputShape = shapes[index]
                }
            }

            let operation = Operation(
                name: name,
                operationName: json["name"].stringValue,
                httpMethod: json["http"]["method"].stringValue,
                path: json["http"]["requestUri"].stringValue,
                inputShape: inputShape,
                outputShape: outputShape,
                deprecatedMessage: deprecatedMessage
            )

            operations.append(operation)
        }

        // construct error list
        var errors: [ErrorShape] = []
        for errorName in errorShapeNames {
            let json = apiJSON["shapes"][errorName]["error"]
            errors.append(ErrorShape(name: errorName, code: json["code"].string, httpStatusCode: json["httpStatusCode"].int))
        }
        return (operations.sorted { $0.name < $1.name }, errors.sorted { $0.name < $1.name })
    }

    /// Add operation to be applied to shape once everything has loaded
    /// - Parameters:
    ///   - shapeName: name of shape
    ///   - operation: operation to apply
    mutating func addShapeOperation(shapeName: String, operation: ShapeOperation ) {
        shapePostProcessOperations.append((name: shapeName, operation: operation))
    }

    /// Apply the collated shape operations to the shapes in the shape array
    /// - Parameter operations: list of shape name, operation tuples
    func applyShapeOperations(_ operations: [(name: String, operation: ShapeOperation)], shapes: inout [Shape]) {
        for entry in operations {
            if let index = shapes.firstIndex(where: { entry.name == $0.name }) {
                shapes[index] = entry.operation.process(shapes[index])
            }
        }
    }
}
