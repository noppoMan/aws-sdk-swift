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

import AWSSDKSwiftCore
import Foundation
import NIO

// MARK: Multipart

extension S3ErrorType {
    public enum multipart: Error {
        /// CreateMultipartUpload did not return an uploadId
        case noUploadId
        /// An empty download was returned
        case downloadEmpty(message: String)
        /// returned if an upload fails and `abortOnFail` is set to false. `uploadId` can be used in `resumeMultipartUpload`. `error` is the original error
        case abortedUpload(uploadId: String, error: Error)
    }
}

extension S3 {
    public enum ThreadPoolProvider {
        case createNew
        case shared(NIOThreadPool)
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - on: an EventLoop to process each downloaded part on
    ///     - outputStream: Function to be called for each downloaded part. Called with data block and file size
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    public func multipartDownload(
        _ input: GetObjectRequest,
        partSize: Int = 5 * 1024 * 1024,
        on eventLoop: EventLoop,
        outputStream: @escaping (ByteBuffer, Int64, EventLoop) -> EventLoopFuture<Void>
    ) -> EventLoopFuture<Int64> {
        let promise = eventLoop.makePromise(of: Int64.self)

        // function downloading part of a file
        func multipartDownloadPart(fileSize: Int64, offset: Int64, prevPartSave: EventLoopFuture<Void>) {
            // have we downloaded everything
            guard fileSize > offset else {
                prevPartSave.map { fileSize }.cascade(to: promise)
                return
            }

            let range = "bytes=\(offset)-\(offset + Int64(partSize - 1))"
            let getRequest = S3.GetObjectRequest(
                bucket: input.bucket,
                key: input.key,
                range: range,
                sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                sSECustomerKey: input.sSECustomerKey,
                sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                versionId: input.versionId
            )
            getObject(getRequest, on: eventLoop)
                .and(prevPartSave)
                .map { (output, _) -> Void in
                    // should never happen
                    guard let body = output.body?.asByteBuffer() else {
                        return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Body is unexpectedly nil"))
                    }
                    guard let length = output.contentLength, length > 0 else {
                        return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                    }

                    let newOffset = offset + Int64(partSize)
                    multipartDownloadPart(fileSize: fileSize, offset: newOffset, prevPartSave: outputStream(body, fileSize, eventLoop))
                }.cascadeFailure(to: promise)
        }

        // get object size before downloading
        let headRequest = S3.HeadObjectRequest(
            bucket: input.bucket,
            ifMatch: input.ifMatch,
            ifModifiedSince: input.ifModifiedSince,
            ifNoneMatch: input.ifNoneMatch,
            ifUnmodifiedSince: input.ifUnmodifiedSince,
            key: input.key,
            requestPayer: input.requestPayer,
            sSECustomerAlgorithm: input.sSECustomerAlgorithm,
            sSECustomerKey: input.sSECustomerKey,
            sSECustomerKeyMD5: input.sSECustomerKeyMD5,
            versionId: input.versionId
        )
        headObject(headRequest, on: eventLoop)
            .map { (object) -> Void in
                guard let contentLength = object.contentLength else {
                    return promise.fail(S3ErrorType.multipart.downloadEmpty(message: "Content length is unexpectedly zero"))
                }
                // download file
                multipartDownloadPart(fileSize: contentLength, offset: 0, prevPartSave: eventLoop.makeSucceededFuture(()))
            }.cascadeFailure(to: promise)

        return promise.futureResult
    }

    /// Multipart download of a file from S3.
    ///
    /// - parameters:
    ///     - input: The GetObjectRequest shape that contains the details of the object request.
    ///     - partSize: Size of each part to be downloaded
    ///     - filename: Filename to save download to
    ///     - on: EventLoop to process downloaded parts, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - progress: Callback that returns the progress of the download. It is called after each part is downloaded with a value between 0.0 and 1.0 indicating how far the download is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive the complete file size once the multipart download has finished.
    public func multipartDownload(
        _ input: GetObjectRequest,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<Int64> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()

        let threadPool: NIOThreadPool
        switch threadPoolProvider {
        case .createNew:
            threadPool = NIOThreadPool(numberOfThreads: 1)
            threadPool.start()
        case .shared(let sharedPool):
            threadPool = sharedPool
        }
        let fileIO = NonBlockingFileIO(threadPool: threadPool)

        return fileIO.openFile(path: filename, mode: .write, flags: .allowFileCreation(), eventLoop: eventLoop).flatMap {
            (fileHandle) -> EventLoopFuture<Int64> in
            var progressValue: Int64 = 0

            let download = self.multipartDownload(input, partSize: partSize, on: eventLoop) { byteBuffer, fileSize, eventLoop in
                let bufferSize = byteBuffer.readableBytes
                return fileIO.write(fileHandle: fileHandle, buffer: byteBuffer, eventLoop: eventLoop).flatMapThrowing { _ in
                    progressValue += Int64(bufferSize)
                    try progress(Double(progressValue) / Double(fileSize))
                }
            }

            download.whenComplete { _ in
                if case .createNew = threadPoolProvider {
                    threadPool.shutdownGracefully { _ in }
                }
            }
            return
                download
                    .flatMapErrorThrowing { error in
                        try fileHandle.close()
                        throw error
                    }
                    .flatMapThrowing { rt in
                        try fileHandle.close()
                        return rt
                    }
        }
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartUpload(
        _ input: CreateMultipartUploadRequest,
        abortOnFail: Bool = true,
        on eventLoop: EventLoop,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        // initialize multipart upload
        let result = createMultipartUpload(input, on: eventLoop).flatMap { upload -> EventLoopFuture<CompleteMultipartUploadOutput> in
            guard let uploadId = upload.uploadId else {
                return eventLoop.makeFailedFuture(S3ErrorType.multipart.noUploadId)
            }
            // upload all the parts
            return self.multipartUploadParts(
                input, uploadId: uploadId,
                on: eventLoop,
                inputStream: inputStream,
                skipStream: { $0.makeSucceededFuture(true) }
            ).flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                let request = S3.CompleteMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    multipartUpload: S3.CompletedMultipartUpload(parts: parts),
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                return self.completeMultipartUpload(request, on: eventLoop)
            }.flatMapErrorThrowing { error in
                guard abortOnFail else { throw S3ErrorType.multipart.abortedUpload(uploadId: uploadId, error: error) }
                // if failure then abort the multipart upload
                let request = S3.AbortMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                _ = self.abortMultipartUpload(request, on: eventLoop)
                throw error
            }
        }
        return result
    }

    /// Multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Full path of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - threadPoolProvider: Provide a thread pool to use or create a new one
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func multipartUpload(
        _ input: CreateMultipartUploadRequest,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        abortOnFail: Bool = true,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        let byteBufferAllocator = ByteBufferAllocator()

        return openFileForMultipartUpload(
            filename: filename,
            on: eventLoop,
            threadPoolProvider: threadPoolProvider
        ) { fileHandle, fileRegion, fileIO in
            var progressAmount: Int = 0
            var prevProgressAmount: Int = 0

            let fileSize = fileRegion.readableBytes

            return self.multipartUpload(input, abortOnFail: abortOnFail, on: eventLoop) { eventLoop in
                let size = min(partSize, fileSize - progressAmount)
                guard size > 0 else { return eventLoop.makeSucceededFuture(.empty) }
                prevProgressAmount = progressAmount
                progressAmount += size
                let payload = AWSPayload.fileHandle(
                    fileHandle,
                    size: size,
                    fileIO: fileIO,
                    byteBufferAllocator: byteBufferAllocator
                ) { downloaded in
                    try progress(Double(downloaded + prevProgressAmount) / Double(fileSize))
                }
                return eventLoop.makeSucceededFuture(payload)
            }
        }
    }

    /// resume multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The original CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - uploadId: The upload id rerturned when the previous multipart upload failed
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: an EventLoop to process each part to upload
    ///     - inputStream: The function supplying the data parts to the multipartUpload. Each parts must be at least 5MB in size expect the last one which has no size limit.
    ///     - skipStream: The function to call when skipping an already loaded part
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func resumeMultipartUpload(
        _ input: CreateMultipartUploadRequest,
        uploadId: String,
        abortOnFail: Bool = true,
        on eventLoop: EventLoop,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>,
        skipStream: @escaping (EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        var completedParts: [S3.CompletedPart] = []
        let listPartsRequest = ListPartsRequest(
            bucket: input.bucket,
            key: input.key,
            requestPayer: input.requestPayer,
            uploadId: uploadId
        )
        return listPartsPaginator(listPartsRequest) { output, eventLoop in
            if let parts = output.parts {
                completedParts += parts.map { CompletedPart(eTag: $0.eTag, partNumber: $0.partNumber)}
            }
            return eventLoop.makeSucceededFuture(true)
        }.flatMap { _ in
            // upload all the parts
            return self.multipartUploadParts(
                input,
                uploadId: uploadId,
                parts: completedParts,
                on: eventLoop,
                inputStream: inputStream,
                skipStream: { $0.makeSucceededFuture(true) }
            ).flatMap { parts -> EventLoopFuture<CompleteMultipartUploadOutput> in
                let request = S3.CompleteMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    multipartUpload: S3.CompletedMultipartUpload(parts: parts),
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                return self.completeMultipartUpload(request, on: eventLoop)
            }.flatMapErrorThrowing { error in
                guard abortOnFail else { throw S3ErrorType.multipart.abortedUpload(uploadId: uploadId, error: error) }
                // if failure then abort the multipart upload
                let request = S3.AbortMultipartUploadRequest(
                    bucket: input.bucket,
                    key: input.key,
                    requestPayer: input.requestPayer,
                    uploadId: uploadId
                )
                _ = self.abortMultipartUpload(request, on: eventLoop)
                throw error
            }
        }
    }

    /// Resume multipart upload of file to S3.
    ///
    /// - parameters:
    ///     - input: The CreateMultipartUploadRequest structure that contains the details about the upload
    ///     - uploadId: The upload id rerturned when the previous multipart upload failed
    ///     - partSize: Size of each part to upload. This has to be at least 5MB
    ///     - filename: Full path of file to upload
    ///     - abortOnFail: Whether should abort multipart upload if it fails. If you want to attempt to resume after a fail this should be set to false
    ///     - on: EventLoop to process parts for upload, if nil an eventLoop is taken from the clients eventLoopGroup
    ///     - eventLoop: Eventloop to run upload on
    ///     - threadPoolProvider: Provide a thread pool to use or create a new one
    ///     - progress: Callback that returns the progress of the upload. It is called after each part is uploaded with a value between 0.0 and 1.0 indicating how far the upload is complete (1.0 meaning finished).
    /// - returns: An EventLoopFuture that will receive a CompleteMultipartUploadOutput once the multipart upload has finished.
    public func resumeMultipartUpload(
        _ input: CreateMultipartUploadRequest,
        uploadId: String,
        partSize: Int = 5 * 1024 * 1024,
        filename: String,
        abortOnFail: Bool = true,
        on eventLoop: EventLoop? = nil,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        progress: @escaping (Double) throws -> Void = { _ in }
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let eventLoop = eventLoop ?? self.client.eventLoopGroup.next()
        let byteBufferAllocator = ByteBufferAllocator()

        return openFileForMultipartUpload(
            filename: filename,
            on: eventLoop,
            threadPoolProvider: threadPoolProvider
        ) { fileHandle, fileRegion, fileIO in
            var progressAmount: Int = 0
            var prevProgressAmount: Int = 0

            let fileSize = fileRegion.readableBytes

            return self.resumeMultipartUpload(
                input,
                uploadId: uploadId,
                abortOnFail: abortOnFail,
                on: eventLoop,
                inputStream:  { eventLoop in
                    let size = min(partSize, fileSize - progressAmount)
                    guard size > 0 else { return eventLoop.makeSucceededFuture(.empty) }
                    prevProgressAmount = progressAmount
                    progressAmount += size
                    let payload = AWSPayload.fileHandle(
                        fileHandle,
                        size: size,
                        fileIO: fileIO,
                        byteBufferAllocator: byteBufferAllocator
                    ) { downloaded in
                        try progress(Double(downloaded + prevProgressAmount) / Double(fileSize))
                    }
                    return eventLoop.makeSucceededFuture(payload)
                },
                skipStream: { eventLoop in
                    let size = min(partSize, fileSize - progressAmount)
                    progressAmount += size
                    //
                    // TODO: Work out how to skip a section of file. Will use NIOFileHandle.read(fileHandle:fromOffset:byteCount:allocator:eventLoop:)
                    // but need to provide a version of fileHandle that supports this
                    //
                    return eventLoop.makeSucceededFuture(size == 0)
            })
        }
    }
}

extension S3 {
    /// Do all the work for opening a file and closing it for MultiUpload function
    func openFileForMultipartUpload(
        filename: String,
        on eventLoop: EventLoop,
        threadPoolProvider: ThreadPoolProvider = .createNew,
        uploadCallback: @escaping (NIOFileHandle, FileRegion, NonBlockingFileIO) -> EventLoopFuture<CompleteMultipartUploadOutput>
    ) -> EventLoopFuture<CompleteMultipartUploadOutput> {
        let threadPool: NIOThreadPool
        switch threadPoolProvider {
        case .createNew:
            threadPool = NIOThreadPool(numberOfThreads: NonBlockingFileIO.defaultThreadPoolSize)
            threadPool.start()
        case .shared(let sharedPool):
            threadPool = sharedPool
        }
        let fileIO = NonBlockingFileIO(threadPool: threadPool)

        return fileIO.openFile(path: filename, eventLoop: eventLoop).flatMap {
            (fileHandle, fileRegion) -> EventLoopFuture<CompleteMultipartUploadOutput> in

            let uploadFuture = uploadCallback(fileHandle, fileRegion, fileIO)

            uploadFuture.whenComplete { _ in
                if case .createNew = threadPoolProvider {
                    threadPool.shutdownGracefully { _ in }
                }
            }
            return
                uploadFuture.flatMapErrorThrowing { error in
                    try fileHandle.close()
                    throw error
                }.flatMapThrowing { rt in
                    try fileHandle.close()
                    return rt
                }
        }

    }

    /// used internally in multipartUpload, loads all the parts once the multipart upload has been initiated
    func multipartUploadParts(
        _ input: CreateMultipartUploadRequest,
        uploadId: String,
        parts: [S3.CompletedPart] = [],
        on eventLoop: EventLoop,
        inputStream: @escaping (EventLoop) -> EventLoopFuture<AWSPayload>,
        skipStream: @escaping (EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<[S3.CompletedPart]> {
        let promise = eventLoop.makePromise(of: [S3.CompletedPart].self)
        var completedParts: [S3.CompletedPart] = []
        // function uploading part of a file and queueing up upload of the next part
        func multipartUploadPart(partNumber: Int, uploadId: String) {
            // if partNumber is in list of already completed parts, skip loading and append that part to completed parts
            if let part = parts.first(where: { $0.partNumber == partNumber }) {
                skipStream(eventLoop).map { finished -> Void in
                    if finished {
                        promise.succeed(completedParts)
                        return
                    }
                    completedParts.append(part)
                    multipartUploadPart(partNumber: partNumber + 1, uploadId: uploadId)
                }.cascadeFailure(to: promise)
            } else {
                // supply payload data
                inputStream(eventLoop).flatMap { payload -> EventLoopFuture<Bool> in
                    // if no data returned then return success
                    guard let size = payload.size, size > 0 else {
                        return eventLoop.makeSucceededFuture(true)
                    }
                    // upload payload
                    let request = S3.UploadPartRequest(
                        body: payload,
                        bucket: input.bucket,
                        key: input.key,
                        partNumber: partNumber,
                        requestPayer: input.requestPayer,
                        sSECustomerAlgorithm: input.sSECustomerAlgorithm,
                        sSECustomerKey: input.sSECustomerKey,
                        sSECustomerKeyMD5: input.sSECustomerKeyMD5,
                        uploadId: uploadId
                    )
                    // request upload future
                    return self.uploadPart(request, on: eventLoop).map { output -> Bool in
                        let part = S3.CompletedPart(eTag: output.eTag, partNumber: partNumber)
                        completedParts.append(part)
                        return false
                    }
                }.map { finished -> Void in
                    if finished {
                        promise.succeed(completedParts)
                        return
                    }
                    multipartUploadPart(partNumber: partNumber + 1, uploadId: uploadId)
                }.cascadeFailure(to: promise)
            }
        }

        // Multipart uploads part numbers start at 1 not 0
        multipartUploadPart(partNumber: 1, uploadId: uploadId)

        return promise.futureResult
    }
}
