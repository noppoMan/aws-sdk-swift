//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import Dispatch
import Foundation
import PathKit
import Stencil
import SwiftFormat

struct CodeGenerator {
    static let sfDisabledRules = FormatRules.disabledByDefault + ["redundantReturn", "redundantBackticks", "trailingCommas", "extensionAccessControl"]
    static let sfRuleNames = Set(FormatRules.byName.keys).subtracting(sfDisabledRules)
    static let sfRules: [FormatRule] = sfRuleNames.map { FormatRules.byName[$0]! }
    static let sfFormtOptions = FormatOptions(
        ifdefIndent: .noIndent,
        wrapArguments: .beforeFirst,
        wrapParameters: .beforeFirst,
        wrapCollections: .beforeFirst,
        hoistPatternLet: false,
        stripUnusedArguments: .unnamedOnly,
        explicitSelf: .insert,
        noSpaceOperators: ["...", "..<"]
    )

    let fsLoader: FileSystemLoader
    let environment: Environment
    let command: CodeGeneratorCommand

    init(command: CodeGeneratorCommand) {
        self.fsLoader = FileSystemLoader(paths: [Path("\(CodeGeneratorCommand.rootPath)/CodeGenerator/Templates/")])
        self.environment = Environment(loader: self.fsLoader)
        self.command = command
    }

    func getModelDirectories() -> [String] {
        if let module = command.module {
            return Glob.entries(pattern: "\(self.command.inputFolder)/apis/\(module)")
        }
        return Glob.entries(pattern: "\(self.command.inputFolder)/apis/**")
    }

    func loadEndpointJSON() throws -> Endpoints {
        let data = try Data(contentsOf: URL(fileURLWithPath: "\(command.inputFolder)/endpoints/endpoints.json"))
        return try JSONDecoder().decode(Endpoints.self, from: data)
    }

    func loadModelJSON() throws -> [(api: API, docs: Docs, paginators: Paginators?)] {
        let directories = self.getModelDirectories()

        return try directories.map {
            guard let apiFile = Glob.entries(pattern: $0 + "/**/api-*.json").first else { fatalError("No API file for \($0)") }
            guard let docFile = Glob.entries(pattern: $0 + "/**/docs-*.json").first else { fatalError("No Doc file for \($0)") }
            let data = try Data(contentsOf: URL(fileURLWithPath: apiFile))
            var api = try JSONDecoder().decode(API.self, from: data)
            try api.postProcess()

            let docData = try Data(contentsOf: URL(fileURLWithPath: docFile))
            let docs = try JSONDecoder().decode(Docs.self, from: docData)

            // a paginator file doesn't always exist
            let paginators: Paginators?
            if let paginatorFile = Glob.entries(pattern: $0 + "/**/paginators-*.json").first {
                let paginatorData = try Data(contentsOf: URL(string: "file://\(paginatorFile)")!)
                paginators = try JSONDecoder().decode(Paginators.self, from: paginatorData)
            } else {
                paginators = nil
            }
            return (api: api, docs: docs, paginators: paginators)
        }
    }

    func format(_ string: String) throws -> String {
        if self.command.swiftFormat {
            return try SwiftFormat.format(string, rules: Self.sfRules, options: Self.sfFormtOptions)
        } else {
            return string
        }
    }

    /// Generate service files from AWSService
    /// - Parameter codeGenerator: service generated from JSON
    func generateFiles(with service: AWSService) throws {
        let basePath = "\(command.outputFolder)/\(service.api.serviceName)/"
        try FileManager.default.createDirectory(atPath: basePath, withIntermediateDirectories: true)

        let apiContext = service.generateServiceContext()
        let api = try self.environment.renderTemplate(name: "api.stencil", context: apiContext)
        if self.command.output, try self.format(api).writeIfChanged(
            toFile: "\(basePath)/\(service.api.serviceName)_API.swift"
        ) {
            print("Wrote: \(service.api.serviceName)_API.swift")
        }

        let shapesContext = service.generateShapesContext()
        let shapes = try self.environment.renderTemplate(name: "shapes.stencil", context: shapesContext)
        if self.command.output, try self.format(shapes).writeIfChanged(
            toFile: "\(basePath)/\(service.api.serviceName)_Shapes.swift"
        ) {
            print("Wrote: \(service.api.serviceName)_Shapes.swift")
        }

        let errorContext = service.generateErrorContext()
        if errorContext["errors"] != nil {
            let errors = try self.environment.renderTemplate(name: "error.stencil", context: errorContext)
            if self.command.output, try self.format(errors).writeIfChanged(
                toFile: "\(basePath)/\(service.api.serviceName)_Error.swift"
            ) {
                print("Wrote: \(service.api.serviceName)_Error.swift")
            }
        }

        let paginatorContext = try service.generatePaginatorContext()
        if paginatorContext["paginators"] != nil {
            let paginators = try self.environment.renderTemplate(name: "paginator.stencil", context: paginatorContext)
            if self.command.output, try self.format(paginators).writeIfChanged(
                toFile: "\(basePath)/\(service.api.serviceName)_Paginator.swift"
            ) {
                print("Wrote: \(service.api.serviceName)_Paginator.swift")
            }
        }
        if self.command.verbose {
            print("Succesfully Generated \(service.api.serviceName)")
        }
    }

    func generate() throws {
        let startTime = Date()

        // load JSON
        let endpoints = try loadEndpointJSON()
        let models = try loadModelJSON()
        let group = DispatchGroup()

        models.forEach { model in
            group.enter()

            DispatchQueue.global().async {
                defer { group.leave() }
                do {
                    let service = try AWSService(
                        api: model.api,
                        docs: model.docs,
                        paginators: model.paginators,
                        endpoints: endpoints,
                        stripHTMLTags: !command.htmlComments
                    )
                    try self.generateFiles(with: service)
                } catch {
                    print("\(error)")
                    exit(1)
                }
            }
        }

        group.wait()

        print("Code Generation took \(Int(-startTime.timeIntervalSinceNow)) seconds")
        print("Done.")
    }
}

extension String {
    /// Only writes to file if the string contents are different to the file contents. This is used to stop XCode rebuilding and reindexing files unnecessarily.
    /// If the file is written to XCode assumes it has changed even when it hasn't
    /// - Parameters:
    ///   - toFile: Filename
    ///   - atomically: make file write atomic
    ///   - encoding: string encoding
    func writeIfChanged(toFile: String) throws -> Bool {
        do {
            let original = try String(contentsOfFile: toFile)
            guard original != self else { return false }
        } catch {
            // print(error)
        }
        try write(toFile: toFile, atomically: true, encoding: .utf8)
        return true
    }
}
