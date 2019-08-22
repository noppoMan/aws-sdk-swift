//
//  Util.swift
//  AWSSDKSwift
//
//  Created by Yuki Takei on 2017/03/26.
//
//

import Foundation
import SwiftyJSON

let enableShowLog = ProcessInfo.processInfo.environment["Verbose"] == nil ? false : true

func indt(_ times: Int, hard: Bool = true) -> String {
    return (0..<times).map({ _ in "    " }).joined()
}

func rootPath() -> String {
    return #file
        .split(separator: "/", omittingEmptySubsequences: false)
        .dropLast(4)
        .map { String(describing: $0) }
        .joined(separator: "/")
}

func apiDirectories() -> [String] {
    return Glob.entries(pattern: "\(rootPath())/models/apis/**")
}

func loadEndpointJSON() throws -> JSON {
    let data = try Data(contentsOf: URL(string: "file://\(rootPath())/models/endpoints/endpoints.json")!)
    return JSON(data: data)
}

func loadDocJSONList() throws -> [JSON] {
    let directories = apiDirectories()

    let docPaths: [String] = directories.map {
        let entries = Glob.entries(pattern: $0+"/**/docs-*.json")
        return entries[entries.count-1]
    }

    return try docPaths.map {
        let data = try Data(contentsOf: URL(string: "file://\($0)")!)
        return JSON(data: data)
    }
}

func loadAPIJSONList() throws -> [JSON] {
    let directories = apiDirectories()

    let apiPaths: [String] = directories.map {
        let entries = Glob.entries(pattern: $0+"/**/api-*.json")
        return entries[entries.count-1]
    }

    return try apiPaths.map {
        let data = try Data(contentsOf: URL(string: "file://\($0)")!)
        var json = JSON(data: data)
        json["serviceName"].stringValue = serviceNameForApi(apiJSON: json)
        return json
    }
}

// port of https://github.com/aws/aws-sdk-go-v2/blob/996478f06a00c31ee7e7b0c3ac6674ce24ba0120/private/model/api/api.go#L105
//
let stripServiceNamePrefixes: [String] = [
  "Amazon",
  "AWS",
]

let serviceAliases: [String:String] = [
	"elasticloadbalancing": "ELB",
	"elasticloadbalancingv2": "ELBV2",
	"config": "ConfigService"
]

func serviceNameForApi(apiJSON: JSON) -> String {
    var serviceNameJSON = apiJSON["metadata"]["serviceAbbreviation"]

    if serviceNameJSON == nil {
        serviceNameJSON = apiJSON["metadata"]["serviceFullName"]
    }

    var serviceName = serviceNameJSON.stringValue

    serviceName.trimCharacters(in: .whitespaces)

    // Strip out prefix names not reflected in service client symbol names.
    for prefix in stripServiceNamePrefixes {
        serviceName.deletePrefix(prefix)
    }

    // Remove all Non-letter/number values
    serviceName.removeCharacterSet(in: CharacterSet.alphanumerics.inverted)

    serviceName.removeWhitespaces()

    // Swap out for alias name if one is defined.
    if let alias = serviceAliases[serviceName.lowercased()] {
        serviceName = alias
    }

    serviceName.capitalizeFirstLetter()

    return serviceName
}

func mkdirp(_ dir: String) -> Int32 {
    let process = Process()
    process.launchPath = "/bin/mkdir" // Mac and Linux
    process.arguments = ["-p", dir]
    process.launch()
    process.waitUntilExit()
    return process.terminationStatus
}

func log(_ message: String) {
    if enableShowLog {
        print(message)
    }
}

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }

    mutating func deletePrefix(_ prefix: String) {
        self = self.deletingPrefix(prefix)
    }

    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }

    mutating func removeWhitespaces() {
        self = self.removingWhitespaces()
    }

    func removingCharacterSet(in characterset: CharacterSet) -> String {
        return components(separatedBy: characterset).joined()
    }

    mutating func removeCharacterSet(in characterset: CharacterSet) {
        self = self.removingCharacterSet(in: characterset)
    }

    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }

    mutating func trimCharacters(in characterset: CharacterSet) {
        self = self.trimmingCharacters(in: characterset)
    }
}
