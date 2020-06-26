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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS EKS service.

Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on AWS without needing to stand up or maintain your own Kubernetes control plane. Kubernetes is an open-source system for automating the deployment, scaling, and management of containerized applications.  Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS are fully compatible with applications running on any standard Kubernetes environment, whether running in on-premises data centers or public clouds. This means that you can easily migrate any standard Kubernetes application to Amazon EKS without any code modification required.
*/
public struct EKS {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: ServiceConfig

    //MARK: Initialization

    /// Initialize the EKS client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider: CredentialProviderFactory? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = ServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "eks",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-01",
            endpoint: endpoint,
            possibleErrorTypes: [EKSErrorType.self]
        )
        self.client = AWSClient(
            credentialProviderFactory: credentialProvider ?? .runtime,
            serviceConfig: serviceConfig,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates an Amazon EKS control plane.  The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, such as etcd and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is single-tenant and unique and runs on its own set of Amazon EC2 instances. The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support kubectl exec, logs, and proxy data flows). Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster. You can use the endpointPublicAccess and endpointPrivateAccess parameters to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .  You can use the logging parameter to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing.  Cluster creation typically takes between 10 and 15 minutes. After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see Managing Cluster Authentication and Launching Amazon EKS Worker Nodes in the Amazon EKS User Guide.
    public func createCluster(_ input: CreateClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        return client.send(operation: "CreateCluster", path: "/clusters", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates an AWS Fargate profile for your Amazon EKS cluster. You must have at least one Fargate profile in a cluster to be able to run pods on Fargate. The Fargate profile allows an administrator to declare which pods run on Fargate and specify which pods run on which Fargate profile. This declaration is done through the profile’s selectors. Each profile can have up to five selectors that contain a namespace and labels. A namespace is required for every selector. The label field consists of multiple optional key-value pairs. Pods that match the selectors are scheduled on Fargate. If a to-be-scheduled pod matches any of the selectors in the Fargate profile, then that pod is run on Fargate. When you create a Fargate profile, you must specify a pod execution role to use with the pods that are scheduled with the profile. This role is added to the cluster's Kubernetes Role Based Access Control (RBAC) for authorization so that the kubelet that is running on the Fargate infrastructure can register with your Amazon EKS cluster so that it can appear in your cluster as a node. The pod execution role also provides IAM permissions to the Fargate infrastructure to allow read access to Amazon ECR image repositories. For more information, see Pod Execution Role in the Amazon EKS User Guide. Fargate profiles are immutable. However, you can create a new updated profile to replace an existing profile and then delete the original after the updated profile has finished creating. If any Fargate profiles in a cluster are in the DELETING status, you must wait for that Fargate profile to finish deleting before you can create any other profiles in that cluster. For more information, see AWS Fargate Profile in the Amazon EKS User Guide.
    public func createFargateProfile(_ input: CreateFargateProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFargateProfileResponse> {
        return client.send(operation: "CreateFargateProfile", path: "/clusters/{name}/fargate-profiles", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a managed worker node group for an Amazon EKS cluster. You can only create a node group for your cluster that is equal to the current Kubernetes version for the cluster. All node groups are created with the latest AMI release version for the respective minor Kubernetes version of the cluster. An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and associated Amazon EC2 instances that are managed by AWS for an Amazon EKS cluster. Each node group uses a version of the Amazon EKS-optimized Amazon Linux 2 AMI. For more information, see Managed Node Groups in the Amazon EKS User Guide. 
    public func createNodegroup(_ input: CreateNodegroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNodegroupResponse> {
        return client.send(operation: "CreateNodegroup", path: "/clusters/{name}/node-groups", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the Amazon EKS cluster control plane. If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see Deleting a Cluster in the Amazon EKS User Guide. If you have managed node groups or Fargate profiles attached to the cluster, you must delete them first. For more information, see DeleteNodegroup and DeleteFargateProfile.
    public func deleteCluster(_ input: DeleteClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        return client.send(operation: "DeleteCluster", path: "/clusters/{name}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an AWS Fargate profile. When you delete a Fargate profile, any pods running on Fargate that were created with the profile are deleted. If those pods match another Fargate profile, then they are scheduled on Fargate with that profile. If they no longer match any Fargate profiles, then they are not scheduled on Fargate and they may remain in a pending state. Only one Fargate profile in a cluster can be in the DELETING status at a time. You must wait for a Fargate profile to finish deleting before you can delete any other profiles in that cluster.
    public func deleteFargateProfile(_ input: DeleteFargateProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFargateProfileResponse> {
        return client.send(operation: "DeleteFargateProfile", path: "/clusters/{name}/fargate-profiles/{fargateProfileName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes an Amazon EKS node group for a cluster.
    public func deleteNodegroup(_ input: DeleteNodegroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNodegroupResponse> {
        return client.send(operation: "DeleteNodegroup", path: "/clusters/{name}/node-groups/{nodegroupName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Returns descriptive information about an Amazon EKS cluster. The API server endpoint and certificate authority data returned by this operation are required for kubelet and kubectl to communicate with your Kubernetes API server. For more information, see Create a kubeconfig for Amazon EKS.  The API server endpoint and certificate authority data aren't available until the cluster reaches the ACTIVE state. 
    public func describeCluster(_ input: DescribeClusterRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterResponse> {
        return client.send(operation: "DescribeCluster", path: "/clusters/{name}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns descriptive information about an AWS Fargate profile.
    public func describeFargateProfile(_ input: DescribeFargateProfileRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFargateProfileResponse> {
        return client.send(operation: "DescribeFargateProfile", path: "/clusters/{name}/fargate-profiles/{fargateProfileName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns descriptive information about an Amazon EKS node group.
    public func describeNodegroup(_ input: DescribeNodegroupRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNodegroupResponse> {
        return client.send(operation: "DescribeNodegroup", path: "/clusters/{name}/node-groups/{nodegroupName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group. When the status of the update is Succeeded, the update is complete. If an update fails, the status is Failed, and an error detail explains the reason for the failure.
    public func describeUpdate(_ input: DescribeUpdateRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUpdateResponse> {
        return client.send(operation: "DescribeUpdate", path: "/clusters/{name}/updates/{updateId}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the Amazon EKS clusters in your AWS account in the specified Region.
    public func listClusters(_ input: ListClustersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListClustersResponse> {
        return client.send(operation: "ListClusters", path: "/clusters", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the AWS Fargate profiles associated with the specified cluster in your AWS account in the specified Region.
    public func listFargateProfiles(_ input: ListFargateProfilesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListFargateProfilesResponse> {
        return client.send(operation: "ListFargateProfiles", path: "/clusters/{name}/fargate-profiles", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the Amazon EKS managed node groups associated with the specified cluster in your AWS account in the specified Region. Self-managed node groups are not listed.
    public func listNodegroups(_ input: ListNodegroupsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNodegroupsResponse> {
        return client.send(operation: "ListNodegroups", path: "/clusters/{name}/node-groups", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  List the tags for an Amazon EKS resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the updates associated with an Amazon EKS cluster or managed node group in your AWS account, in the specified Region.
    public func listUpdates(_ input: ListUpdatesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUpdatesResponse> {
        return client.send(operation: "ListUpdates", path: "/clusters/{name}/updates", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well. Tags that you create for Amazon EKS resources do not propagate to any other resources associated with the cluster. For example, if you tag a cluster with this operation, that tag does not automatically propagate to the subnets and worker nodes associated with the cluster.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates an Amazon EKS cluster configuration. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the DescribeUpdate API operation. You can use this API operation to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see Amazon EKS Cluster Control Plane Logs in the  Amazon EKS User Guide .  CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see Amazon CloudWatch Pricing.  You can also use this API operation to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see Amazon EKS Cluster Endpoint Access Control in the  Amazon EKS User Guide .   At this time, you can not update the subnets or security group IDs for an existing cluster.  Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active.
    public func updateClusterConfig(_ input: UpdateClusterConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterConfigResponse> {
        return client.send(operation: "UpdateClusterConfig", path: "/clusters/{name}/update-config", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the DescribeUpdate API operation. Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to UPDATING (this status transition is eventually consistent). When the update is complete (either Failed or Successful), the cluster status moves to Active. If your cluster has managed node groups attached to it, all of your node groups’ Kubernetes versions must match the cluster’s Kubernetes version in order to update the cluster to a new Kubernetes version.
    public func updateClusterVersion(_ input: UpdateClusterVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateClusterVersionResponse> {
        return client.send(operation: "UpdateClusterVersion", path: "/clusters/{name}/updates", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates an Amazon EKS managed node group configuration. Your node group continues to function during the update. The response output includes an update ID that you can use to track the status of your node group update with the DescribeUpdate API operation. Currently you can update the Kubernetes labels for a node group or the scaling configuration.
    public func updateNodegroupConfig(_ input: UpdateNodegroupConfigRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNodegroupConfigResponse> {
        return client.send(operation: "UpdateNodegroupConfig", path: "/clusters/{name}/node-groups/{nodegroupName}/update-config", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the Kubernetes version or AMI version of an Amazon EKS managed node group. You can update to the latest available AMI version of a node group's current Kubernetes version by not specifying a Kubernetes version in the request. You can update to the latest AMI version of your cluster's current Kubernetes version by specifying your cluster's Kubernetes version in the request. For more information, see Amazon EKS-Optimized Linux AMI Versions in the Amazon EKS User Guide. You cannot roll back a node group to an earlier Kubernetes version or AMI version. When a node in a managed node group is terminated due to a scaling action or update, the pods in that node are drained first. Amazon EKS attempts to drain the nodes gracefully and will fail if it is unable to do so. You can force the update if Amazon EKS is unable to drain the nodes as a result of a pod disruption budget issue.
    public func updateNodegroupVersion(_ input: UpdateNodegroupVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateNodegroupVersionResponse> {
        return client.send(operation: "UpdateNodegroupVersion", path: "/clusters/{name}/node-groups/{nodegroupName}/update-version", httpMethod: "POST", input: input, on: eventLoop)
    }
}
