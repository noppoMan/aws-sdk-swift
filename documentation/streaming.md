# Streaming data

If uploading or downloading large files it is preferable if you can stream this data instead of holding it all in memory. AWSSDKSwift supplies methods for streaming raw data payloads of both requests to AWS and responses from AWS. The most common use of this would be when uploading or downloading large objects to S3.

## Payload object

All raw data payloads in AWSSDKSwift are represented by an `AWSPayload` object. This can be initialized with `Data`, `String`, `ByteBuffer` or a stream function that provides chunks of a raw payload.

## Request streaming

The `AWSPayload.stream` holds a stream function which returns a `EventLoopFuture<StreamReaderResult>`. `StreamReaderResult` has two cases `.byteBuffer()` which holds a `ByteBuffer` to be uploaded or `.end` which indicates we are done. Each time a `ByteBuffer` is uploaded the stream function is called again to provide the next `ByteBuffer`. Some AWS streaming operations require that you provide the total size at the start eg S3 operations, and some will allow for uploads without a defined size eg `Lex.PostContent`. If you have provided a size at the start your stream function will be called until you have provided exactly that amount of data.

```swift
let payload = AWSPayload.stream(size: 2*1024*1024) { eventLoop in
    let buffer = giveMeAChunkFromMyPayload()
    return eventLoop.makeSucceededFuture(.byteBuffer(buffer))    
}
let request = S3.PutObjectRequest(body: payload, bucket: "my-bucket", key: "my-file")
let response = try S3.PutObject(request).wait()
```

If you provide too much data an error will be thrown. If no size is specified in advance then you finish the request by returning `eventLoop.makeSucceededFuture(.end)` from your stream function.

### File uploading

Given that streaming files is probably the most common operation. AWSSDKSwift provides a wrapper for `AWSPayload.stream` that uploads a file. You need to provide it with `NIOFileHandle` and `NonBlockingFileIO`. Checkout Swift NIO documentation on these [here](https://apple.github.io/swift-nio/docs/current/NIO/Structs/NonBlockingFileIO.html). Again if the operation requires a `size`, as all S3 operations do, you will have to supply that. Assuming you have all of the above, you can upload a file to S3 with the following.

```swift
let request = S3.PutObjectRequest(
    body: .fileHandle(nioFileHandle, size: fileSize, fileIO: nonBlockFileIO),
    bucket: "my-bucket",
    key: "my-file"
)
let response = try S3.PutObject(request).wait()
```

## Response streaming

Response streaming is handled slightly differently. All operations that have the capability to stream the response payload have an additional function with the suffix "Streaming". These functions have an additional parameter which is a closure of the form `(ByteBuffer, EventLoop) -> EventLoopFuture<Void>`. This closure is called every time a chunk of the payload is downloaded. You are expected to return an `EventLoopFuture<Void>` that is fulfilled when you are done with the `ByteBuffer`. The following will processing S3 data as it is being downloaded.
```
let getRequest = S3.GetObjectRequest(bucket: "my-bucket", key: "my-file")
let response = try s3.getObjectStreaming(getRequest) { byteBuffer, eventLoop in
    processByteBuffer(byteBuffer)
    return eventLoop.makeSucceededFuture(())
}
```
