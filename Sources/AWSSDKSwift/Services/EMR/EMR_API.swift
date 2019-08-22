// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon EMR is a web service that makes it easy to process large amounts of data efficiently. Amazon EMR uses Hadoop processing combined with several AWS products to do tasks such as web indexing, data mining, log file analysis, machine learning, scientific simulation, and data warehousing.
*/
public struct EMR {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "ElasticMapReduce",
            service: "elasticmapreduce",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2009-03-31",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [EMRErrorType.self]
        )
    }

    ///  Adds an instance fleet to a running cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x. 
    public func addInstanceFleet(_ input: AddInstanceFleetInput) throws -> Future<AddInstanceFleetOutput> {
        return try client.send(operation: "AddInstanceFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds one or more instance groups to a running cluster.
    public func addInstanceGroups(_ input: AddInstanceGroupsInput) throws -> Future<AddInstanceGroupsOutput> {
        return try client.send(operation: "AddInstanceGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step. Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully. You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.
    public func addJobFlowSteps(_ input: AddJobFlowStepsInput) throws -> Future<AddJobFlowStepsOutput> {
        return try client.send(operation: "AddJobFlowSteps", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters. 
    public func addTags(_ input: AddTagsInput) throws -> Future<AddTagsOutput> {
        return try client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a PENDING state.
    public func cancelSteps(_ input: CancelStepsInput) throws -> Future<CancelStepsOutput> {
        return try client.send(operation: "CancelSteps", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a security configuration, which is stored in the service and can be specified when a cluster is created.
    public func createSecurityConfiguration(_ input: CreateSecurityConfigurationInput) throws -> Future<CreateSecurityConfigurationOutput> {
        return try client.send(operation: "CreateSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a security configuration.
    public func deleteSecurityConfiguration(_ input: DeleteSecurityConfigurationInput) throws -> Future<DeleteSecurityConfigurationOutput> {
        return try client.send(operation: "DeleteSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. 
    public func describeCluster(_ input: DescribeClusterInput) throws -> Future<DescribeClusterOutput> {
        return try client.send(operation: "DescribeCluster", path: "/", httpMethod: "POST", input: input)
    }

    ///  This API is deprecated and will eventually be removed. We recommend you use ListClusters, DescribeCluster, ListSteps, ListInstanceGroups and ListBootstrapActions instead. DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time. Regardless of supplied parameters, only job flows created within the last two months are returned. If no parameters are supplied, then job flows matching either of the following criteria are returned:   Job flows created and completed in the last two weeks    Job flows created within the last two months that are in one of the following states: RUNNING, WAITING, SHUTTING_DOWN, STARTING    Amazon EMR can return a maximum of 512 job flow descriptions.
    @available(*, deprecated, message:"DescribeJobFlows is deprecated.")
    public func describeJobFlows(_ input: DescribeJobFlowsInput) throws -> Future<DescribeJobFlowsOutput> {
        return try client.send(operation: "DescribeJobFlows", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides the details of a security configuration by returning the configuration JSON.
    public func describeSecurityConfiguration(_ input: DescribeSecurityConfigurationInput) throws -> Future<DescribeSecurityConfigurationOutput> {
        return try client.send(operation: "DescribeSecurityConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides more detail about the cluster step.
    public func describeStep(_ input: DescribeStepInput) throws -> Future<DescribeStepOutput> {
        return try client.send(operation: "DescribeStep", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information about the bootstrap actions associated with a cluster.
    public func listBootstrapActions(_ input: ListBootstrapActionsInput) throws -> Future<ListBootstrapActionsOutput> {
        return try client.send(operation: "ListBootstrapActions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.
    public func listClusters(_ input: ListClustersInput) throws -> Future<ListClustersOutput> {
        return try client.send(operation: "ListClusters", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all available details about the instance fleets in a cluster.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 
    public func listInstanceFleets(_ input: ListInstanceFleetsInput) throws -> Future<ListInstanceFleetsOutput> {
        return try client.send(operation: "ListInstanceFleets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides all available details about the instance groups in a cluster.
    public func listInstanceGroups(_ input: ListInstanceGroupsInput) throws -> Future<ListInstanceGroupsOutput> {
        return try client.send(operation: "ListInstanceGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.
    public func listInstances(_ input: ListInstancesInput) throws -> Future<ListInstancesOutput> {
        return try client.send(operation: "ListInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.
    public func listSecurityConfigurations(_ input: ListSecurityConfigurationsInput) throws -> Future<ListSecurityConfigurationsOutput> {
        return try client.send(operation: "ListSecurityConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.
    public func listSteps(_ input: ListStepsInput) throws -> Future<ListStepsOutput> {
        return try client.send(operation: "ListSteps", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.  The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. 
    @discardableResult public func modifyInstanceFleet(_ input: ModifyInstanceFleetInput) throws -> Future<Void> {
        return try client.send(operation: "ModifyInstanceFleet", path: "/", httpMethod: "POST", input: input)
    }

    ///  ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.
    @discardableResult public func modifyInstanceGroups(_ input: ModifyInstanceGroupsInput) throws -> Future<Void> {
        return try client.send(operation: "ModifyInstanceGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.
    public func putAutoScalingPolicy(_ input: PutAutoScalingPolicyInput) throws -> Future<PutAutoScalingPolicyOutput> {
        return try client.send(operation: "PutAutoScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes an automatic scaling policy from a specified instance group within an EMR cluster.
    public func removeAutoScalingPolicy(_ input: RemoveAutoScalingPolicyInput) throws -> Future<RemoveAutoScalingPolicyOutput> {
        return try client.send(operation: "RemoveAutoScalingPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see Tag Clusters.  The following example removes the stack tag with value Prod from a cluster:
    public func removeTags(_ input: RemoveTagsInput) throws -> Future<RemoveTagsOutput> {
        return try client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the JobFlowInstancesConfig KeepJobFlowAliveWhenNoSteps parameter is set to TRUE, the cluster transitions to the WAITING state rather than shutting down after the steps have completed.  For additional protection, you can set the JobFlowInstancesConfig TerminationProtected parameter to TRUE to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error. A maximum of 256 steps are allowed in each job flow. If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see Add More than 256 Steps to a Cluster in the Amazon EMR Management Guide. For long running clusters, we recommend that you periodically store your results.  The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both. 
    public func runJobFlow(_ input: RunJobFlowInput) throws -> Future<RunJobFlowOutput> {
        return try client.send(operation: "RunJobFlow", path: "/", httpMethod: "POST", input: input)
    }

    ///  SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling SetTerminationProtection on a cluster is similar to calling the Amazon EC2 DisableAPITermination API on all EC2 instances in a cluster.  SetTerminationProtection is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.  To terminate a cluster that has been locked by setting SetTerminationProtection to true, you must first unlock the job flow by a subsequent call to SetTerminationProtection in which you set the value to false.   For more information, seeManaging Cluster Termination in the Amazon EMR Management Guide. 
    @discardableResult public func setTerminationProtection(_ input: SetTerminationProtectionInput) throws -> Future<Void> {
        return try client.send(operation: "SetTerminationProtection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the VisibleToAllUsers parameter of RunJobFlow. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.
    @discardableResult public func setVisibleToAllUsers(_ input: SetVisibleToAllUsersInput) throws -> Future<Void> {
        return try client.send(operation: "SetVisibleToAllUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created. The maximum number of clusters allowed is 10. The call to TerminateJobFlows is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.
    @discardableResult public func terminateJobFlows(_ input: TerminateJobFlowsInput) throws -> Future<Void> {
        return try client.send(operation: "TerminateJobFlows", path: "/", httpMethod: "POST", input: input)
    }
}
