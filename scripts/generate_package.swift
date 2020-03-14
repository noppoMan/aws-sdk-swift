#!/usr/bin/env swift

import Foundation

enum GenerationError: Error {
    case noAWSSDKSwiftCoreVersion
    case directoryLocation(String)
}

if CommandLine.arguments.count <= 1 {
    throw GenerationError.noAWSSDKSwiftCoreVersion
}
let awsSdkSwiftCoreVersion = CommandLine.arguments[1]

let manager = FileManager.default

let sourceBasePath = "./Sources/AWSSDKSwift"
let servicesBasePath = "\(sourceBasePath)/Services"
let extensionsBasePath = "\(sourceBasePath)/Extensions"
let testsBasePath = "./Tests/AWSSDKSwiftTests/Services"

func findDirectoryNames(at path: String) -> [String]? {
    guard let names = try? manager.contentsOfDirectory(atPath: path) else {
	    print("Could not list \(path)")
	    return nil
    }
    return names
}

guard let services = findDirectoryNames(at: servicesBasePath) else {
	throw GenerationError.directoryLocation("Problem locating services")
}
guard let extensions = findDirectoryNames(at: extensionsBasePath) else {
    throw GenerationError.directoryLocation("Problem locating extensions")
}
guard let tests = findDirectoryNames(at: testsBasePath) else {
    throw GenerationError.directoryLocation("Problem locating tests")
}
var testsSet: Set<String> = Set<String>(tests)

// insert test dependencies need for aws request tests
testsSet.insert("ACM")
testsSet.insert("CloudFront")
testsSet.insert("EC2")
testsSet.insert("IAM")
testsSet.insert("Route53")
testsSet.insert("S3")
testsSet.insert("SES")
testsSet.insert("SNS")

// list of modules
let modules = services
// list of libraries
let libraries = services.map( { "        .library(name: \"AWS\($0)\", targets: [\"AWS\($0)\"])" }).sorted().joined(separator: ",\n")
// list of targets
let serviceTargets = services.map { (serviceName) -> String in
    if let _ = extensions.first(where: { $0 == serviceName }) {
        return "        .target(name: \"AWS\(serviceName)\", dependencies: [\"AWSSDKSwiftCore\"], path: \"\(sourceBasePath)/\", sources: [\"Services/\(serviceName)\", \"Extensions/\(serviceName)\"])"
    } else {
        return "        .target(name: \"AWS\(serviceName)\", dependencies: [\"AWSSDKSwiftCore\"], path: \"\(servicesBasePath)/\(serviceName)\")"
    }
}.sorted().joined(separator: ",\n")

// test dependencies
let testDependencies = testsSet.map { "\n            \"AWS\($0)\"" }.sorted().joined(separator: ",")

// Output the Package.swift
print("""
    // swift-tools-version:5.0
    import PackageDescription

    let package = Package(
        name: "AWSSDKSwift",
        platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
        products: [
    """)
print(libraries)
print("""
          ],
          dependencies: [
              .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "\(awsSdkSwiftCoreVersion)"))
          ],
          targets: [
      """)

print("\(serviceTargets),\n")

print("""
              .testTarget(name: "AWSSDKSwiftTests", dependencies: [\(testDependencies)
              ])
          ]
      )
      """)
