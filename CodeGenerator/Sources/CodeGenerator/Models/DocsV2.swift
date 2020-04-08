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
            let refs = try container.decode([String: String?].self, forKey: .refs)
            self.refs = refs.compactMapValues { $0 }
        }
        
        private enum CodingKeys: String, CodingKey {
            case base
            case refs
        }

    }
    var version: String
    var service: String
    var operations: [String: String]
    var shapes: [String: Shape]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.version = try container.decode(String.self, forKey: .version)
        self.service = try container.decode(String.self, forKey: .service)
        let operations = try container.decode([String: String?].self, forKey: .operations)
        self.operations = operations.compactMapValues { $0 }
        self.shapes = try container.decode([String: Shape].self, forKey: .shapes)
    }
    
    private enum CodingKeys: String, CodingKey {
        case version
        case service
        case operations
        case shapes
    }
}
