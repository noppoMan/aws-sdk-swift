## Contributing

To contribute a feature or idea to `Soto`, submit an issue and fill in the template. If the request is approved, you or one of the members of the team can start working on it.

If you find a bug, please submit a pull request with a failing test case displaying the bug or create an issue.

If you find a security vulnerability, please contact <swift-aws-maintainers@googlegroups.com> and reach out on either the [soto-project Slack](https://soto-project.slack.com/archives/C012XA3DE1F) or [**#aws** channel on the Vapor Discord](https://discordapp.com/channels/431917998102675485/472522745067077632) as soon as possible. We take these matters seriously.

### Creating, Updating, and Patching Service Modules

`Soto` is built using code generation. There are a few steps to generate the modules, and also a process to "patch" updates or fixes when we find them to be necessary to work correctly.

The Soto shape, api and error service files are generated from the json files in the [`models`](https://github.com/soto-project/soto/tree/master/models) folder. We get these from Amazon via the [`aws-sdk-go`](https://github.com/aws/aws-sdk-go) GitHub repository.

The application to do this conversion from model file to Soto services files can be found in the [`CodeGenerator`](https://github.com/soto-project/soto/tree/master/CodeGenerator) folder of the soto repository. Go into this folder and type `open Package.swift` to load the project into Xcode.

The model files are not always correct, so we have to patch them before generating the Soto service files. This patch process is part of the `CodeGenerator` and is run prior to parsing the dictionaries that have been loaded from the model json. The code for this can be found in [`patch.swift`](https://github.com/soto-project/soto/blob/master/CodeGenerator/Sources/CodeGenerator/patch.swift).

At the top of this file you'll see a list of various shapes that have been patched. There are three types of patch (`replace`, `add` or `remove`). To work out what you need to patch, you need to look at the `api-2.json` file for the service you are editing and find the definition of the shape you want to change. The most common patches are for renaming, or adding enum entries. There are a number of patches removing a variable from the "required" section of a shape, for example. Once you have edited `patch.swift` you should run the CodeGenerator and new service files will be generated.

To help make it easier to review the contents of a response (to identify what might need to get patched), you can add the `AWSLoggingMiddleware` to the client to provide debug output. This should help you work out what the issue is. When you create your client you add the logging middleware as follows.

```swift
let client = AWSClient(middlewares: [AWSLoggingMiddleware()], ...)
```
