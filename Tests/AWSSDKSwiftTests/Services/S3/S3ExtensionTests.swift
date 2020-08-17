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

import AsyncHTTPClient
import Foundation
import NIO
import NIOHTTP1
import XCTest

@testable import AWSS3
@testable import AWSSDKSwiftCore

class S3ExtensionTests: XCTestCase {
    static var client: AWSClient!
    static var s3: S3!

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }

        Self.client = AWSClient(credentialProvider: TestEnvironment.credentialProvider, middlewares: TestEnvironment.middlewares, httpClientProvider: .createNew)
        Self.s3 = S3(
            client: S3ExtensionTests.client,
            region: .useast1,
            endpoint: TestEnvironment.getEndPoint(environment: "S3_ENDPOINT", default: "http://localhost:4566")
        )
    }

    override class func tearDown() {
        XCTAssertNoThrow(try Self.client.syncShutdown())
    }

    /// test bucket location is correctly returned.
    func testGetBucketLocation() {
        let name = TestEnvironment.generateResourceName()
        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { _ in
                return Self.s3.getBucketLocation(.init(bucket: name))
            }
            .map { response in
                XCTAssertEqual(response.locationConstraint, .usEast1)
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    /// test metadata is uploaded and downloaded ok
    func testMetaData() {
        let name = TestEnvironment.generateResourceName()
        let contents = "testing metadata header"
        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { (_) -> EventLoopFuture<S3.PutObjectOutput> in
                let putRequest = S3.PutObjectRequest(
                    body: .string(contents),
                    bucket: name,
                    key: name,
                    metadata: ["Test": "testing", "first": "one"]
                )
                return Self.s3.putObject(putRequest)
            }
            .flatMap { _ -> EventLoopFuture<S3.GetObjectOutput> in
                return Self.s3.getObject(.init(bucket: name, key: name))
            }
            .map { response -> Void in
                XCTAssertEqual(response.metadata?["test"], "testing")
                XCTAssertEqual(response.metadata?["first"], "one")
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testMultiPartDownload() {
        guard !TestEnvironment.isUsingLocalstack else { return }
        let data = S3Tests.createRandomBuffer(size: 10 * 1024 * 1024)
        let name = TestEnvironment.generateResourceName()
        let filename = "S3MultipartDownloadTest"
        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { (_) -> EventLoopFuture<S3.PutObjectOutput> in
                let putRequest = S3.PutObjectRequest(body: .data(data), bucket: name, contentLength: Int64(data.count), key: filename)
                return Self.s3.putObject(putRequest)
            }
            .flatMap { _ -> EventLoopFuture<Int64> in
                let request = S3.GetObjectRequest(bucket: name, key: filename)
                return Self.s3.multipartDownload(request, partSize: 1024 * 1024, filename: filename) { print("Progress \($0 * 100)%") }
            }
            .flatMapErrorThrowing { error in
                print("\(error)")
                throw error
            }
            .flatMapThrowing { size in
                XCTAssertEqual(size, Int64(data.count))
                XCTAssert(FileManager.default.fileExists(atPath: filename))
                try FileManager.default.removeItem(atPath: filename)
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testMultiPartDownloadFailure() {
        let name = TestEnvironment.generateResourceName()
        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { _ -> EventLoopFuture<Int64> in
                let request = S3.GetObjectRequest(bucket: name, key: name)
                return Self.s3.multipartDownload(request, partSize: 1024 * 1024, filename: name) { print("Progress \($0 * 100)%") }
            }
            .map { _ in
                XCTFail("testMultiPartDownloadFailure: should have failed")
            }
            .flatMapErrorThrowing { error in
                switch error {
                case let error as AWSError:
                    XCTAssertEqual(error.statusCode, .notFound)
                    return
                default:
                    XCTFail("Unexpected error: \(error)")
                }
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testMultiPartUpload() {
        let data = S3Tests.createRandomBuffer(size: 10 * 1024 * 1024)
        let name = TestEnvironment.generateResourceName()
        let filename = "S3MultipartUploadTest"

        XCTAssertNoThrow(try data.write(to: URL(fileURLWithPath: filename)))
        defer {
            XCTAssertNoThrow(try FileManager.default.removeItem(atPath: filename))
        }

        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { (_) -> EventLoopFuture<S3.CompleteMultipartUploadOutput> in
                let request = S3.CreateMultipartUploadRequest(
                    bucket: name,
                    key: name
                )
                return Self.s3.multipartUpload(request, partSize: 5 * 1024 * 1024, filename: filename) { print("Progress \($0 * 100)%") }
            }
            .flatMap { _ -> EventLoopFuture<S3.GetObjectOutput> in
                return Self.s3.getObject(.init(bucket: name, key: name))
            }
            .map { response -> Void in
                XCTAssertEqual(response.body?.asData(), data)
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testMultiPartUploadFailure() {
        let data = S3Tests.createRandomBuffer(size: 10 * 1024 * 1024)
        let name = TestEnvironment.generateResourceName()
        let filename = "S3MultipartUploadTestFail"

        XCTAssertNoThrow(try data.write(to: URL(fileURLWithPath: filename)))
        defer {
            XCTAssertNoThrow(try FileManager.default.removeItem(atPath: filename))
        }

        // file doesn't exist test
        let response = S3Tests.createBucket(name: name, s3: Self.s3)
            .flatMap { _ -> EventLoopFuture<Void> in
                let request = S3.CreateMultipartUploadRequest(bucket: name, key: name)
                return Self.s3.multipartUpload(request, partSize: 5 * 1024 * 1024, filename: "doesntexist").map { _ in }
            }
            .map { _ in
                XCTFail("testMultiPartDownloadFailure: should have failed")
            }
            .flatMapErrorThrowing { _ -> Void in
                return
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: Self.s3)
            }
        XCTAssertNoThrow(try response.wait())

        // bucket doesn't exist
        let request = S3.CreateMultipartUploadRequest(bucket: name, key: name)
        let response2 = Self.s3.multipartUpload(request, partSize: 5 * 1024 * 1024, filename: filename)
            .map { _ in
                XCTFail("testMultiPartDownloadFailure: should have failed")
            }
            .flatMapErrorThrowing { error -> Void in
                switch error {
                case S3ErrorType.noSuchBucket:
                    return
                default:
                    XCTFail("Unexpected error: \(error)")
                }
            }
        XCTAssertNoThrow(try response2.wait())
    }

    func testSelectObjectContent() {
        // This doesnt work with LocalStack
        guard !TestEnvironment.isUsingLocalstack else { return }
        let httpClient = HTTPClient(eventLoopGroupProvider: .createNew)
        let client = AWSClient(
            credentialProvider: TestEnvironment.credentialProvider,
            middlewares: TestEnvironment.middlewares,
            httpClientProvider: .shared(httpClient)
        )
        let s3 = S3(
            client: client,
            region: .euwest1,
            endpoint: TestEnvironment.getEndPoint(environment: "S3_ENDPOINT", default: "http://localhost:4566")
        )
        defer {
            XCTAssertNoThrow(try client.syncShutdown())
            XCTAssertNoThrow(try httpClient.syncShutdown())
        }

        let strings = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.".split(separator: " ")
        let file = strings.reduce("") { $0 + "\($1), \($1.count), \($0.count + $1.count)\n" }
        let file2 = file + file
        let file3 = file2 + file2
        let file4 = file3 + file3
        let file5 = file4 + file4
        let file6 = file5 + file5
        let file7 = file6 + file6
        let file8 = file7 + file7
        let file9 = file8 + file8
        let file10 = file9 + file9

        let name = TestEnvironment.generateResourceName()
        let runOnEventLoop = s3.client.eventLoopGroup.next()

        let response = S3Tests.createBucket(name: name, s3: s3)
            .hop(to: runOnEventLoop)
            .flatMap { _ -> EventLoopFuture<S3.PutObjectOutput> in
                let putRequest = S3.PutObjectRequest(body: .string(file10), bucket: name, key: "file.csv")
                return s3.putObject(putRequest, on: runOnEventLoop)
            }
            .flatMap { _ -> EventLoopFuture<S3.SelectObjectContentOutput> in
                let expression = "Select * from S3Object"
                let input = S3.InputSerialization(csv: .init(fieldDelimiter: ",", fileHeaderInfo: .use, recordDelimiter: "\n"))
                let output = S3.OutputSerialization(csv: .init(fieldDelimiter: ",", recordDelimiter: "\n"))
                let request = S3.SelectObjectContentRequest(
                    bucket: name,
                    expression: expression,
                    expressionType: .sql,
                    inputSerialization: input,
                    key: "file.csv",
                    outputSerialization: output,
                    requestProgress: S3.RequestProgress(enabled: true)
                )
                return s3.selectObjectContentEventStream(request, on: runOnEventLoop) { eventStream, eventLoop in
                    XCTAssertTrue(eventLoop === runOnEventLoop)
                    if let records = eventStream.records?.payload {
                        print(String(data: records, encoding: .utf8)!)
                    }
                    return eventLoop.makeSucceededFuture(())
                }
            }
            .flatAlways { _ in
                return S3Tests.deleteBucket(name: name, s3: s3)
            }
        XCTAssertNoThrow(try response.wait())
    }

    func testS3VirtualAddressing(_ urlString: String) throws -> String {
        let url = URL(string: urlString)!
        let request = try AWSRequest(
            region: .useast1,
            url: url,
            serviceProtocol: Self.s3.serviceConfig.serviceProtocol,
            operation: "TestOperation",
            httpMethod: .GET,
            httpHeaders: [:],
            body: .empty
        ).applyMiddlewares(Self.s3.serviceConfig.middlewares)
        return request.url.relativeString
    }

    func testS3VirtualAddressing() {
        XCTAssertEqual(try self.testS3VirtualAddressing("https://s3.us-east-1.amazonaws.com/bucket"), "https://bucket.s3.us-east-1.amazonaws.com/")
        XCTAssertEqual(try self.testS3VirtualAddressing("https://s3.us-east-1.amazonaws.com/bucket//filename"), "https://bucket.s3.us-east-1.amazonaws.com/filename")
        XCTAssertEqual(try self.testS3VirtualAddressing("https://s3.us-east-1.amazonaws.com/bucket/filename?test=test&test2=test2"), "https://bucket.s3.us-east-1.amazonaws.com/filename?test=test&test2=test2")
        XCTAssertEqual(try self.testS3VirtualAddressing("https://s3.us-east-1.amazonaws.com/bucket/filename?test=%3D"), "https://bucket.s3.us-east-1.amazonaws.com/filename?test=%3D")
        XCTAssertEqual(try self.testS3VirtualAddressing("https://s3.us-east-1.amazonaws.com/bucket/file%20name"), "https://bucket.s3.us-east-1.amazonaws.com/file%20name")
        XCTAssertEqual(try self.testS3VirtualAddressing("http://localhost:8000/bucket/filename"), "http://localhost:8000/bucket/filename")
        XCTAssertEqual(try self.testS3VirtualAddressing("http://localhost:8000//bucket/filename"), "http://localhost:8000/bucket/filename")
        XCTAssertEqual(try self.testS3VirtualAddressing("http://localhost:8000/bucket//filename"), "http://localhost:8000/bucket/filename")
        XCTAssertEqual(try self.testS3VirtualAddressing("https://localhost:8000/bucket/file%20name"), "https://localhost:8000/bucket/file%20name")
    }
}
