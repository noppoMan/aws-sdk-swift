// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Client object for interacting with AWS SSOAdmin service.

*/
public struct SSOAdmin {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the SSOAdmin client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - eventLoopGroupProvider: EventLoopGroup to use. Use `useAWSClientShared` if the client shall manage its own EventLoopGroup.
    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "SWBExternalService",
            service: "sso",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2020-07-20",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [SSOAdminErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }
    
    //MARK: API Calls

    ///  Attaches an IAM managed policy ARN to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet  after this action to apply the corresponding IAM policy updates to all assigned accounts. 
    public func attachManagedPolicyToPermissionSet(_ input: AttachManagedPolicyToPermissionSetRequest) -> EventLoopFuture<AttachManagedPolicyToPermissionSetResponse> {
        return client.send(operation: "AttachManagedPolicyToPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Assigns access to a principal for a specified AWS account using a specified permission set.  The term principal here refers to a user or group that is defined in AWS SSO.   As part of a successful CreateAccountAssignment call, the specified permission set will automatically be provisioned to the account in the form of an IAM policy attached to the SSO-created IAM role. If the permission set is subsequently updated, the corresponding IAM policies attached to roles in your accounts will not be updated automatically. In this case, you will need to call  ProvisionPermissionSet  to make these updates. 
    public func createAccountAssignment(_ input: CreateAccountAssignmentRequest) -> EventLoopFuture<CreateAccountAssignmentResponse> {
        return client.send(operation: "CreateAccountAssignment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a permission set within a specified SSO instance.  To grant users and groups access to AWS account resources, use  CreateAccountAssignment . 
    public func createPermissionSet(_ input: CreatePermissionSetRequest) -> EventLoopFuture<CreatePermissionSetResponse> {
        return client.send(operation: "CreatePermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a principal's access from a specified AWS account using a specified permission set.
    public func deleteAccountAssignment(_ input: DeleteAccountAssignmentRequest) -> EventLoopFuture<DeleteAccountAssignmentResponse> {
        return client.send(operation: "DeleteAccountAssignment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the inline policy from a specified permission set.
    public func deleteInlinePolicyFromPermissionSet(_ input: DeleteInlinePolicyFromPermissionSetRequest) -> EventLoopFuture<DeleteInlinePolicyFromPermissionSetResponse> {
        return client.send(operation: "DeleteInlinePolicyFromPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified permission set.
    public func deletePermissionSet(_ input: DeletePermissionSetRequest) -> EventLoopFuture<DeletePermissionSetResponse> {
        return client.send(operation: "DeletePermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the status of the assignment creation request.
    public func describeAccountAssignmentCreationStatus(_ input: DescribeAccountAssignmentCreationStatusRequest) -> EventLoopFuture<DescribeAccountAssignmentCreationStatusResponse> {
        return client.send(operation: "DescribeAccountAssignmentCreationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the status of the assignment deletion request.
    public func describeAccountAssignmentDeletionStatus(_ input: DescribeAccountAssignmentDeletionStatusRequest) -> EventLoopFuture<DescribeAccountAssignmentDeletionStatusResponse> {
        return client.send(operation: "DescribeAccountAssignmentDeletionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the details of the permission set.
    public func describePermissionSet(_ input: DescribePermissionSetRequest) -> EventLoopFuture<DescribePermissionSetResponse> {
        return client.send(operation: "DescribePermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the status for the given permission set provisioning request.
    public func describePermissionSetProvisioningStatus(_ input: DescribePermissionSetProvisioningStatusRequest) -> EventLoopFuture<DescribePermissionSetProvisioningStatusResponse> {
        return client.send(operation: "DescribePermissionSetProvisioningStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches the attached IAM managed policy ARN from the specified permission set.
    public func detachManagedPolicyFromPermissionSet(_ input: DetachManagedPolicyFromPermissionSetRequest) -> EventLoopFuture<DetachManagedPolicyFromPermissionSetResponse> {
        return client.send(operation: "DetachManagedPolicyFromPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains the inline policy assigned to the permission set.
    public func getInlinePolicyForPermissionSet(_ input: GetInlinePolicyForPermissionSetRequest) -> EventLoopFuture<GetInlinePolicyForPermissionSetResponse> {
        return client.send(operation: "GetInlinePolicyForPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the status of the AWS account assignment creation requests for a specified SSO instance.
    public func listAccountAssignmentCreationStatus(_ input: ListAccountAssignmentCreationStatusRequest) -> EventLoopFuture<ListAccountAssignmentCreationStatusResponse> {
        return client.send(operation: "ListAccountAssignmentCreationStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the status of the AWS account assignment deletion requests for a specified SSO instance.
    public func listAccountAssignmentDeletionStatus(_ input: ListAccountAssignmentDeletionStatusRequest) -> EventLoopFuture<ListAccountAssignmentDeletionStatusResponse> {
        return client.send(operation: "ListAccountAssignmentDeletionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the assignee of the specified AWS account with the specified permission set.
    public func listAccountAssignments(_ input: ListAccountAssignmentsRequest) -> EventLoopFuture<ListAccountAssignmentsResponse> {
        return client.send(operation: "ListAccountAssignments", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the AWS accounts where the specified permission set is provisioned.
    public func listAccountsForProvisionedPermissionSet(_ input: ListAccountsForProvisionedPermissionSetRequest) -> EventLoopFuture<ListAccountsForProvisionedPermissionSetResponse> {
        return client.send(operation: "ListAccountsForProvisionedPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the SSO instances that the caller has access to.
    public func listInstances(_ input: ListInstancesRequest) -> EventLoopFuture<ListInstancesResponse> {
        return client.send(operation: "ListInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the IAM managed policy that is attached to a specified permission set.
    public func listManagedPoliciesInPermissionSet(_ input: ListManagedPoliciesInPermissionSetRequest) -> EventLoopFuture<ListManagedPoliciesInPermissionSetResponse> {
        return client.send(operation: "ListManagedPoliciesInPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the status of the permission set provisioning requests for a specified SSO instance.
    public func listPermissionSetProvisioningStatus(_ input: ListPermissionSetProvisioningStatusRequest) -> EventLoopFuture<ListPermissionSetProvisioningStatusResponse> {
        return client.send(operation: "ListPermissionSetProvisioningStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the PermissionSets in an SSO instance.
    public func listPermissionSets(_ input: ListPermissionSetsRequest) -> EventLoopFuture<ListPermissionSetsResponse> {
        return client.send(operation: "ListPermissionSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the permission sets that are provisioned to a specified AWS account.
    public func listPermissionSetsProvisionedToAccount(_ input: ListPermissionSetsProvisionedToAccountRequest) -> EventLoopFuture<ListPermissionSetsProvisionedToAccountResponse> {
        return client.send(operation: "ListPermissionSetsProvisionedToAccount", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the tags that are attached to a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  The process by which a specified permission set is provisioned to the specified target.
    public func provisionPermissionSet(_ input: ProvisionPermissionSetRequest) -> EventLoopFuture<ProvisionPermissionSetResponse> {
        return client.send(operation: "ProvisionPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches an IAM inline policy to a permission set.  If the permission set is already referenced by one or more account assignments, you will need to call  ProvisionPermissionSet  after this action to apply the corresponding IAM policy updates to all assigned accounts. 
    public func putInlinePolicyToPermissionSet(_ input: PutInlinePolicyToPermissionSetRequest) -> EventLoopFuture<PutInlinePolicyToPermissionSetResponse> {
        return client.send(operation: "PutInlinePolicyToPermissionSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a set of tags with a specified resource.
    public func tagResource(_ input: TagResourceRequest) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a set of tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing permission set.
    public func updatePermissionSet(_ input: UpdatePermissionSetRequest) -> EventLoopFuture<UpdatePermissionSetResponse> {
        return client.send(operation: "UpdatePermissionSet", path: "/", httpMethod: "POST", input: input)
    }
}
