//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Foundation

struct CodeGeneratorV2 {
    var api: API
    var docs: Docs
    var paginators: Paginators?
    var endpoints: Endpoints
    var errors: [API.Shape]
    
    init(api: API, docs: Docs, paginators: Paginators?, endpoints: Endpoints) throws {
        self.api = api
        self.docs = docs
        self.paginators = paginators
        self.endpoints = endpoints
        self.errors = try Self.getErrors(from: api)
    }
    
    /// Return list of errors from API
    static func getErrors(from api: API) throws -> [API.Shape] {
        var errorsSet: Set<API.Shape> = []
        for operation in api.operations.values {
            for error in operation.errors {
                try errorsSet.insert(api.getShape(named: error.shapeName))
            }
        }
        return errorsSet.map { $0 }
    }
    
    /// service protocol
    var serviceProtocol: String {
        var versionString: String = ""
        if let version = api.metadata.jsonVersion?.split(separator: ".") {
            versionString = ", version: ServiceProtocol.Version(major: \(version[0]), minor: \(version[1]))"
        }
        return "ServiceProtocol(type: \(api.metadata.protocol.enumStringValue)\(versionString))"
    }
    
    /// Service endpoints from API and Endpoints structure
    var serviceEndpoints: [(key: String, value: String)] {
        guard let serviceEndpoints = endpoints.partitions[0].services[api.metadata.endpointPrefix]?.endpoints else { return [] }
        return serviceEndpoints.compactMap {
            if let hostname = $0.value.hostname {
                return (key: $0.key, value: hostname)
            } else if partitionEndpoint != nil {
                // if there is a partition endpoint, then default this regions endpoint to ensure partition endpoint doesn't override it. Only an issue for S3 at the moment.
                return (key: $0.key, value: "\(api.metadata.endpointPrefix).\($0.key).amazonaws.com")
            }
            return nil
        }
    }

    var partitionEndpoint: String? {
        return endpoints.partitions[0].services[api.metadata.endpointPrefix]?.partitionEndpoint
    }

    /// Get middleware name
    var middleware: String? {
        switch api.serviceName {
        case "APIGateway":
            return "APIGatewayMiddleware()"
        case "Glacier":
            return "GlacierRequestMiddleware(apiVersion: \"\(api.metadata.apiVersion)\")"
        case "S3":
            return "S3RequestMiddleware()"
        case "S3Control":
            return "S3ControlMiddleware()"
        default:
            return nil
        }
    }

    var serviceErrorName: String {
        return api.serviceName + "ErrorType"
    }
}

//MARK: Generate contexts

extension CodeGeneratorV2 {
    struct ErrorContext {
        let `enum`: String
        let string: String
    }

    struct OperationContext {
        let comment: [String.SubSequence]
        let funcName: String
        let inputShape: String?
        let outputShape: String?
        let name: String
        let path: String
        let httpMethod: String
        let deprecated: String?
    }

    struct PaginatorContext {
        let operation: OperationContext
        let output: String
        let initParams: [String]
        let paginatorProtocol: String
        let tokenType: String
    }

    struct EnumMemberContext {
        let `case`: String
        let string: String
    }

    struct EnumContext {
        let name: String
        let values: [EnumMemberContext]
    }

    struct MemberContext {
        let variable : String
        let locationPath : String
        let parameter : String
        let required : Bool
        let `default` : String?
        let type : String
        let typeEnum : String
        let comment : [String.SubSequence]
        var duplicate : Bool
    }

    struct AWSShapeMemberContext {
        let name : String
        let location : String?
        let locationName : String?
        let encoding : String?
    }

    class ValidationContext {
        let name : String
        let shape : Bool
        let required : Bool
        let reqs : [String : Any]
        let member : ValidationContext?
        let key : ValidationContext?
        let value : ValidationContext?

        init(name: String, shape: Bool = false, required: Bool = true, reqs: [String: Any] = [:], member: ValidationContext? = nil, key: ValidationContext? = nil, value: ValidationContext? = nil) {
            self.name = name
            self.shape = shape
            self.required = required
            self.reqs = reqs
            self.member = member
            self.key = key
            self.value = value
        }
    }

    struct StructureContext {
        let object : String
        let name : String
        let payload : String?
        let namespace : String?
        let members : [MemberContext]
        let awsShapeMembers : [AWSShapeMemberContext]
        let validation : [ValidationContext]
    }

    struct ResultContext {
        let name: String
        let type: String
    }

    /// generate operations context
    func generateOperationContext(_ operation: API.Operation, name: String) -> OperationContext {
        return OperationContext(
            comment: docs.operations[name]?.tagStriped().split(separator: "\n") ?? [],
            funcName: name.toSwiftVariableCase(),
            inputShape: operation.input?.shapeName,
            outputShape: operation.output?.shapeName,
            name: operation.name,
            path: operation.http.requestUri,
            httpMethod: operation.http.method,
            deprecated: operation.deprecatedMessage ?? (operation.deprecated == true ? "\(name) is deprecated." : nil)
        )
    }
    
    /// Generate the context information for outputting the service api calls
    func generateServiceContext() -> [String: Any] {
        var context: [String: Any] = [:]

        // Service initialization
        context["name"] = api.serviceName
        context["description"] = docs.service.tagStriped()
        context["amzTarget"] = api.metadata.targetPrefix
        context["endpointPrefix"] = api.metadata.endpointPrefix
        if api.metadata.signingName != api.metadata.endpointPrefix {
            context["signingName"] = api.metadata.signingName
        }
        context["protocol"] = serviceProtocol
        context["apiVersion"] = api.metadata.apiVersion
        let endpoints = serviceEndpoints.sorted { $0.key < $1.key }.map {return "\"\($0.key)\": \"\($0.value)\""}
        if endpoints.count > 0 {
            context["serviceEndpoints"] = endpoints
        }
        context["partitionEndpoint"] = partitionEndpoint
        context["middlewareClass"] = middleware

        if !errors.isEmpty {
            context["errorTypes"] = serviceErrorName
        }

        // Operations
        var operationContexts: [OperationContext] = []
        for operation in api.operations {
            operationContexts.append(generateOperationContext(operation.value, name: operation.key))
        }
        context["operations"] = operationContexts.sorted { $0.funcName < $1.funcName }
        return context
    }

    /// Generate the context information for outputting the error enums
    func generateErrorContext() -> [String: Any] {
        var context: [String: Any] = [:]
        context["name"] = api.serviceName
        context["errorName"] = serviceErrorName

        var errorContexts: [ErrorContext] = []
        let errors = self.errors.sorted { $0.name < $1.name }
        for error in errors {
            let code: String = error.error?.code ?? error.name
            errorContexts.append(ErrorContext(enum: error.name.toSwiftVariableCase(), string: code))
        }
        if errorContexts.count > 0 {
            context["errors"] = errorContexts
        }
        return context
    }

    /// Generate paginator context
    func generatePaginatorContext() throws -> [String: Any] {
        guard let pagination = paginators?.pagination else { return [:] }
        let paginators = pagination.map { return (key:$0.key, value: $0.value) }.sorted { $0.key < $1.key }
        var context: [String: Any] = [:]
        context["name"] = api.serviceName

        var paginatorContexts: [PaginatorContext] = []
        
        for paginator in paginators {
            // get related operation and its input and output shapes
            guard let operation = api.operations[paginator.key],
                let inputShape = try operation.input.map({ try api.getShape(named: $0.shapeName) }),
                let outputShape = try operation.output.map({ try api.getShape(named: $0.shapeName) }),
                case .structure(let inputStructure) = inputShape.type,
                case .structure(let outputStructure) = outputShape.type else {
                    continue
            }

            let inputTokens = paginator.value.inputTokens ?? []
            let rawOutputTokens = paginator.value.outputTokens ?? []
            let outputTokens = rawOutputTokens.map { String($0.split(separator: "|")[0]).trimmingCharacters(in: CharacterSet.whitespaces) }

            // get input token member
            guard inputTokens.count > 0,
                outputTokens.count > 0,
                let inputTokenMember = inputStructure.members[inputTokens[0]] else {
                    continue
            }
            
            let paginatorProtocol = "AWSPaginateToken"
            let tokenType = inputTokenMember.shape.swiftTypeNameWithServiceNamePrefix(api.serviceName)
            
            // process output tokens
            let processedOutputTokens = outputTokens.map { (token)->String in
                var split = token.split(separator: ".")
                for i in 0..<split.count {
                    // if string contains [-1] replace with '.last'.
                    if let negativeIndexRange = split[i].range(of: "[-1]") {
                        split[i].removeSubrange(negativeIndexRange)
                        
                        var replacement = "last"
                        // if a member is mentioned after the '[-1]' then you need to add a ? to the keyPath
                        if split.count > i+1 {
                            replacement += "?"
                        }
                        split.insert(Substring(replacement), at: i+1)
                    }
                }
                // if output token is member of an optional struct add ? suffix
                if outputStructure.required?.first(where: {$0 == String(split[0])}) == nil,
                    split.count > 1 {
                    split[0] += "?"
                }
                return split.map { String($0).toSwiftVariableCase() }.joined(separator: ".")
            }
                        
            var initParams: [String: String] = [:]
            for member in inputStructure.members {
                initParams[member.key.toSwiftLabelCase()] = "self.\(member.key.toSwiftLabelCase())"
            }
            initParams[inputTokens[0].toSwiftLabelCase()] = "token"
            let initParamsArray = initParams.map {"\($0.key): \($0.value)"}.sorted { $0.lowercased() < $1.lowercased() }
            paginatorContexts.append(
                PaginatorContext(
                    operation: generateOperationContext(operation, name: paginator.key),
                    output: processedOutputTokens[0],
                    initParams: initParamsArray,
                    paginatorProtocol: paginatorProtocol,
                    tokenType: tokenType
                )
            )
        }
        
        if paginatorContexts.count > 0 {
            context["paginators"] = paginatorContexts
        }
        return context
    }
    
    /// Generate the context information for outputting an enum
    func generateEnumContext(_ shape: API.Shape, values: [String]) -> EnumContext {

        // Operations
        var valueContexts: [EnumMemberContext] = []
        for value in values {
            var key = value.lowercased()
                .replacingOccurrences(of: ".", with: "_")
                .replacingOccurrences(of: ":", with: "_")
                .replacingOccurrences(of: "-", with: "_")
                .replacingOccurrences(of: " ", with: "_")
                .replacingOccurrences(of: "/", with: "_")
                .replacingOccurrences(of: "(", with: "_")
                .replacingOccurrences(of: ")", with: "_")
                .replacingOccurrences(of: "*", with: "all")

            if Int(String(key[key.startIndex])) != nil { key = "_"+key }

            var caseName = key.camelCased().reservedwordEscaped()
            if caseName.allLetterIsNumeric() {
                caseName = "\(shape.name.toSwiftVariableCase())\(caseName)"
            }
            valueContexts.append(EnumMemberContext(case: caseName, string: value))
        }

        return EnumContext(
            name: shape.name.toSwiftClassCase().reservedwordEscaped(),
            values: valueContexts
        )
    }

    /// return if shape has a recursive reference (function only tests 2 levels)
    func doesShapeHaveRecursiveOwnReference(_ shape: API.Shape, type: API.Shape.ShapeType.StructureType) -> Bool {
        let hasRecursiveOwnReference = type.members.values.contains(where: { member in
            // does shape have a member of same type as itself
            if member.shape === shape {
                return true
            } else {
                switch member.shape.type {
                case .list(let list):
                    if list.member.shape === shape {
                        return true
                    }
                    
                case .structure(let type):
                    // test children structures as well to see if they contain a member of same type as the parent shape
                    if type.members.values.contains(where: {
                        return $0.shape === shape
                    }) {
                        return true
                    }
                default:
                    break
                }
                return false
            }
        })
        
        return hasRecursiveOwnReference
    }
    
    /// Generate the context information for outputting a member variable
    func generateMemberContext(_ member: API.Shape.Member, name: String, shape: API.Shape) -> MemberContext {
        let defaultValue : String?
        if member.idempotencyToken == true {
            defaultValue = "\(shape.swiftTypeName).idempotencyToken()"
        } else if !member.required {
            defaultValue = "nil"
        } else {
            defaultValue = nil
        }
        let memberDocs = docs.shapes[member.shape.name]?.refs["\(shape.name!)$\(name)"]?.tagStriped().split(separator: "\n")
        return MemberContext(
            variable: name.toSwiftVariableCase(),
            locationPath: member.locationName ?? name,
            parameter: name.toSwiftLabelCase(),
            required: member.required,
            default: defaultValue,
            type: member.shape.swiftTypeName + (member.required ? "" : "?"),
            typeEnum: "\(member.shape.type.description)",
            comment: memberDocs ?? [],//shapeDoc[shape.name]?[member.name]?.split(separator: "\n") ?? [],
            duplicate: false
        )
    }
    
    /// Return encoding string for shap member
    func getEncoding(for member: API.Shape.Member, isPayload: Bool) -> String? {
        if case .blob(_, _) = member.shape.type, isPayload {
            return ".blob"
        }
        
        guard api.metadata.protocol != .json && api.metadata.protocol != .restjson else { return nil }
        
        switch member.shape.type {
        case .list(let list):
            if list.flattened == true || member.flattened == true {
                return ".flatList"
            } else {
                return ".list(member:\"\(list.member.locationName ?? "member")\")"
            }
        case .map(let map):
            if map.flattened == true || member.flattened == true {
                return ".flatMap(key:\"\(map.key.locationName ?? "key")\", value:\"\(map.value.locationName ?? "value")\")"
            } else {
                return ".map(entry:\"entry\", key: \"\(map.key.locationName ?? "key")\", value: \"\(map.value.locationName ?? "value")\")"
            }
        default:
            break
        }
        return nil
    }
    
    /// Generate the context information for outputting a member variable
    func generateAWSShapeMemberContext(_ member: API.Shape.Member, name: String, shape: API.Shape, isPayload: Bool) -> AWSShapeMemberContext? {
        var locationName: String? = member.locationName
        let location = member.location ?? .body
        let encoding = getEncoding(for: member, isPayload: isPayload)

        if (isPayload || encoding != nil) && locationName == nil {
            locationName = name
        }
        // remove location if equal to body and name is same as variable name
        if location == .body && locationName == name.toSwiftLabelCase() {
            locationName = nil
        }
        guard locationName != nil || encoding != nil else { return nil }
        return AWSShapeMemberContext(
            name: name.toSwiftLabelCase(),
            location: location.enumStringValue,
            locationName: locationName,
            encoding: encoding
        )
    }

    /// Generate validation context
    func generateValidationContext(name: String, shape: API.Shape, required: Bool, container: Bool = false, alreadyProcessed: Set<String> = []) -> ValidationContext? {
        var requirements : [String: Any] = [:]
        switch shape.type {
        case .integer(let min, let max):
            requirements["max"] = max
            requirements["min"] = min

        case .long(let min, let max):
            requirements["max"] = max
            requirements["min"] = min

        case .float(let min, let max):
            requirements["max"] = max.map{ Int($0) }
            requirements["min"] = min.map{ Int($0) }

        case .double(let min, let max):
            requirements["max"] = max.map{ Int($0) }
            requirements["min"] = min.map{ Int($0) }

        case .blob(let min, let max):
            requirements["max"] = max
            requirements["min"] = min
            break

        case .list(let list):
            requirements["max"] = list.max
            requirements["min"] = list.min
            // validation code doesn't support containers inside containers. Only service affected by this is SSM
            if !container {
                if let memberValidationContext = generateValidationContext(name: name, shape: list.member.shape, required: true, container: true, alreadyProcessed: alreadyProcessed) {
                    return ValidationContext(name: name.toSwiftVariableCase(), required: required, reqs: requirements, member: memberValidationContext)
                }
            }
        case .map(let map):
            // validation code doesn't support containers inside containers. Only service affected by this is SSM
            if !container {
                let keyValidationContext = generateValidationContext(name: name, shape: map.key.shape, required: true, container: true, alreadyProcessed: alreadyProcessed)
                let valueValiationContext = generateValidationContext(name: name, shape: map.value.shape, required: true, container: true, alreadyProcessed: alreadyProcessed)
                if keyValidationContext != nil || valueValiationContext != nil {
                    return ValidationContext(name: name.toSwiftVariableCase(), required: required, key: keyValidationContext, value: valueValiationContext)
                }
            }
        case .string(let min, let max, let pattern):
            requirements["max"] = max
            requirements["min"] = min
            if let pattern = pattern {
                requirements["pattern"] = "\"\(pattern.addingBackslashEncoding())\""
            }
        case .structure(let structure):
            guard !alreadyProcessed.contains(shape.name) else { return nil }
            var alreadyProcessed = alreadyProcessed
            alreadyProcessed.insert(shape.name)
            for member2 in structure.members {
                if generateValidationContext(name:member2.key, shape:member2.value.shape, required: member2.value.required, container: false, alreadyProcessed: alreadyProcessed) != nil {
                    return ValidationContext(name: name.toSwiftVariableCase(), shape: true, required: required)
                }
            }
        default:
            break
        }
        if requirements.count > 0 {
            return ValidationContext(name: name.toSwiftVariableCase(), reqs: requirements)
        }
        return nil
    }

    /// Generate the context for outputting a single AWSShape
    func generateStructureContext(_ shape: API.Shape, type: API.Shape.ShapeType.StructureType) -> StructureContext {
        var memberContexts : [MemberContext] = []
        var awsShapeMemberContexts : [AWSShapeMemberContext] = []
        var validationContexts : [ValidationContext] = []
        var usedLocationPath : [String] = []
        let members = type.members.map { (key:$0.key, value:$0.value)} .sorted {$0.key.lowercased() < $1.key.lowercased() }
        for member in members {
            var memberContext = generateMemberContext(member.value, name: member.key, shape: shape)

            // check for duplicates, this seems to be mainly caused by deprecated variables
            let locationPath = member.value.locationName ?? member.key
            if usedLocationPath.contains(locationPath) {
                memberContext.duplicate = true
            } else {
                usedLocationPath.append(locationPath)
            }

            memberContexts.append(memberContext)

            if let awsShapeMemberContext = generateAWSShapeMemberContext(member.value, name: member.key, shape: shape, isPayload: shape.payload == member.key) {
                awsShapeMemberContexts.append(awsShapeMemberContext)
            }

            // only output validation for shapes used in inputs to service apis
            if shape.usedInInput {
                if let validationContext = generateValidationContext(name:member.key, shape: member.value.shape, required: member.value.required) {
                    validationContexts.append(validationContext)
                }
            }
        }

        return StructureContext(
            object: doesShapeHaveRecursiveOwnReference(shape, type: type) ? "class" : "struct",
            name: shape.swiftTypeName,
            payload: shape.payload?.toSwiftLabelCase(),
            namespace: shape.xmlNamespace?.uri,
            members: memberContexts,
            awsShapeMembers: awsShapeMemberContexts,
            validation: validationContexts)
    }

    /// Generate the context for outputting all the AWSShape (enums and structures)
    func generateShapesContext() -> [String: Any] {
        var context: [String: Any] = [:]
        context["name"] = api.serviceName

        var shapeContexts: [[String: Any]] = []
        let shapes = api.shapes.values.sorted { $0.name < $1.name }
        for shape in shapes {
            if shape.usedInInput == false && shape.usedInOutput == false {
                continue
            }
            // don't output error shapes
            //if errorShapeNames.contains(shape.name) { continue }

            switch shape.type {
            case .enum(let enumType):
                var enumContext: [String: Any] = [:]
                enumContext["enum"] = generateEnumContext(shape, values: enumType.cases)
                shapeContexts.append(enumContext)

            case .structure(let type):
                var structContext: [String: Any] = [:]
                structContext["struct"] = generateStructureContext(shape, type: type)
                shapeContexts.append(structContext)

            default:
                break
            }
        }
        context["shapes"] = shapeContexts
        return context
    }


}

//MARK: Extensions

extension API.Shape : Hashable, Equatable {
    static func == (lhs: API.Shape, rhs: API.Shape) -> Bool {
        lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        self.name.hash(into: &hasher)
    }
}

extension API.Metadata.ServiceProtocol {
    var enumStringValue: String {
        switch self {
        case .restxml:
            return ".restxml"
        case .restjson:
            return ".restjson"
        case .json:
            return ".json"
        case .query:
            return ".query"
        case .ec2:
            return ".other(\"ec2\")"
        }
    }
}

extension API.Shape.ShapeType {
    var description: String {
        switch self {
        case .structure:
            return "structure"
        case .list:
            return "list"
        case .map:
            return "map"
        case .enum:
            return "enum"
        case .boolean:
            return "boolean"
        case .blob:
            return "blob"
        case .double:
            return "double"
        case .float:
            return "float"
        case .long:
            return "long"
        case .integer:
            return "integer"
        case .string:
            return "string"
        case .timestamp:
            return "timestamp"
        }
    }
}

extension API.Shape {
    public var swiftTypeName: String {
        switch self.type {
        case .string(_, _, _):
            return "String"
        case .integer(_, _):
            return "Int"
        case .structure(_):
            return name.toSwiftClassCase()
        case .boolean:
            return "Bool"
        case .list(let list):
            return "[\(list.member.shape.swiftTypeName)]"
        case .map(let map):
            return "[\(map.key.shape.swiftTypeName): \(map.value.shape.swiftTypeName)]"
        case .long(_, _):
            return "Int64"
        case .double(_, _):
            return "Double"
        case .float(_, _):
            return "Float"
        case .blob:
            return "Data"
        case .timestamp:
            return "TimeStamp"
        case .enum(_):
            return name.toSwiftClassCase()
        }
    }
    
    /// return swift type name that would compile when referenced outside of service class. You need to prefix all shapes defined in the service class with the service name
    public func swiftTypeNameWithServiceNamePrefix(_ serviceName: String) -> String {
        switch self.type {
        case .structure(_), .enum(_):
            return "\(serviceName).\(name.toSwiftClassCase())"
            
        case .list(let list):
            return "[\(list.member.shape.swiftTypeNameWithServiceNamePrefix(serviceName))]"
            
        case .map(let map):
            return "[\(map.key.shape.swiftTypeNameWithServiceNamePrefix(serviceName)): \(map.value.shape.swiftTypeNameWithServiceNamePrefix(serviceName))]"
            
        default:
            return self.swiftTypeName
        }
    }
}

extension API.Shape.Location {
    var enumStringValue: String {
        switch self {
        case .header, .headers:
            return ".header"
        case .querystring:
            return ".querystring"
        case .uri:
            return ".uri"
        case .body:
            return ".body"
        default:
            return ".body"
        }
    }
}
