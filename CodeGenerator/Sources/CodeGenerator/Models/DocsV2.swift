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

// Used to decode model doc_2.json files
struct Docs: Decodable {
    
    struct Shape: Decodable {
        var base: String?
        var refs: [String: String]
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.base = try container.decodeIfPresent(String.self, forKey: .base)
            self.refs = try container.decode([String: String?].self, forKey: .refs).compactMapValues { $0 }
        }
        
        private enum CodingKeys: String, CodingKey {
            case base
            case refs
        }

    }
    var version: String
    var service: String
    var operations: [String: String]
    var shapes: [String: [String: String]]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.version = try container.decode(String.self, forKey: .version)
        self.service = try container.decode(String.self, forKey: .service)
        let operations = try container.decode([String: String?].self, forKey: .operations)
        self.operations = operations.compactMapValues { $0 }
        // sorted shapes by key so we get consistent results when there are key clashes
        let tempShapes = try container.decode([String: Shape].self, forKey: .shapes)
            .map({return (key:$0.key, value: $0.value)})
            .sorted(by: { $0.key < $1.key })
        
        self.shapes = [:]
        
        for shape in tempShapes {
            for ref in shape.value.refs {
                let components = ref.key.split(separator: "$").map { String($0)}
                guard components.count == 2 else { continue }
                if shapes[components[0]] == nil {
                    shapes[components[0]] = [components[1]: ref.value]
                } else {
                    shapes[components[0]]![components[1]] = ref.value
                }
            }
        }
    }
    
    private enum CodingKeys: String, CodingKey {
        case version
        case service
        case operations
        case shapes
    }
}

