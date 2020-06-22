// swift-tools-version:5.1
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

import PackageDescription

let package = Package(
  name: "AWS{{name}}",
  products: [
      .library(name: "AWS{{name}}", targets: ["AWS{{name}}"]),
  ],
  dependencies: [
      .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "{{version}}"))
  ],
  targets: [
      .target(name: "AWS{{name}}", dependencies: ["AWSSDKSwiftCore", "CAWSZlib"], path: "./Sources/{{name}}"),
      .target(name: "CAWSZlib", linkerSettings: [.linkedLibrary("z")]),
  ]
)
