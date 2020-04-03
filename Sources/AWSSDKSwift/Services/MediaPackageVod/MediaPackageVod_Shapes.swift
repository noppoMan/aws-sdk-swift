// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MediaPackageVod {
    //MARK: Enums

    public enum AdMarkers: String, CustomStringConvertible, Codable {
        case none = "NONE"
        case scte35Enhanced = "SCTE35_ENHANCED"
        case passthrough = "PASSTHROUGH"
        public var description: String { return self.rawValue }
    }

    public enum EncryptionMethod: String, CustomStringConvertible, Codable {
        case aes128 = "AES_128"
        case sampleAes = "SAMPLE_AES"
        public var description: String { return self.rawValue }
    }

    public enum ManifestLayout: String, CustomStringConvertible, Codable {
        case full = "FULL"
        case compact = "COMPACT"
        public var description: String { return self.rawValue }
    }

    public enum Profile: String, CustomStringConvertible, Codable {
        case none = "NONE"
        case hbbtv15 = "HBBTV_1_5"
        public var description: String { return self.rawValue }
    }

    public enum SegmentTemplateFormat: String, CustomStringConvertible, Codable {
        case numberWithTimeline = "NUMBER_WITH_TIMELINE"
        case timeWithTimeline = "TIME_WITH_TIMELINE"
        case numberWithDuration = "NUMBER_WITH_DURATION"
        public var description: String { return self.rawValue }
    }

    public enum StreamOrder: String, CustomStringConvertible, Codable {
        case original = "ORIGINAL"
        case videoBitrateAscending = "VIDEO_BITRATE_ASCENDING"
        case videoBitrateDescending = "VIDEO_BITRATE_DESCENDING"
        public var description: String { return self.rawValue }
    }

    public enum Periodtriggerselement: String, CustomStringConvertible, Codable {
        case ads = "ADS"
        public var description: String { return self.rawValue }
    }

    //MARK: Shapes

    public struct AssetShallow: AWSShape {

        /// The ARN of the Asset.
        public let arn: String?
        /// The time the Asset was initially submitted for Ingest.
        public let createdAt: String?
        /// The unique identifier for the Asset.
        public let id: String?
        /// The ID of the PackagingGroup for the Asset.
        public let packagingGroupId: String?
        /// The resource ID to include in SPEKE key requests.
        public let resourceId: String?
        /// ARN of the source object in S3.
        public let sourceArn: String?
        /// The IAM role ARN used to access the source S3 bucket.
        public let sourceRoleArn: String?

        public init(arn: String? = nil, createdAt: String? = nil, id: String? = nil, packagingGroupId: String? = nil, resourceId: String? = nil, sourceArn: String? = nil, sourceRoleArn: String? = nil) {
            self.arn = arn
            self.createdAt = createdAt
            self.id = id
            self.packagingGroupId = packagingGroupId
            self.resourceId = resourceId
            self.sourceArn = sourceArn
            self.sourceRoleArn = sourceRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdAt = "createdAt"
            case id = "id"
            case packagingGroupId = "packagingGroupId"
            case resourceId = "resourceId"
            case sourceArn = "sourceArn"
            case sourceRoleArn = "sourceRoleArn"
        }
    }

    public struct CmafEncryption: AWSShape {

        public let spekeKeyProvider: SpekeKeyProvider

        public init(spekeKeyProvider: SpekeKeyProvider) {
            self.spekeKeyProvider = spekeKeyProvider
        }

        private enum CodingKeys: String, CodingKey {
            case spekeKeyProvider = "spekeKeyProvider"
        }
    }

    public struct CmafPackage: AWSShape {

        public let encryption: CmafEncryption?
        /// A list of HLS manifest configurations.
        public let hlsManifests: [HlsManifest]
        /// Duration (in seconds) of each fragment. Actual fragments will be
        /// rounded to the nearest multiple of the source fragment duration.
        public let segmentDurationSeconds: Int?

        public init(encryption: CmafEncryption? = nil, hlsManifests: [HlsManifest], segmentDurationSeconds: Int? = nil) {
            self.encryption = encryption
            self.hlsManifests = hlsManifests
            self.segmentDurationSeconds = segmentDurationSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case encryption = "encryption"
            case hlsManifests = "hlsManifests"
            case segmentDurationSeconds = "segmentDurationSeconds"
        }
    }

    public struct CreateAssetRequest: AWSShape {

        public let id: String
        public let packagingGroupId: String
        public let resourceId: String?
        public let sourceArn: String
        public let sourceRoleArn: String

        public init(id: String, packagingGroupId: String, resourceId: String? = nil, sourceArn: String, sourceRoleArn: String) {
            self.id = id
            self.packagingGroupId = packagingGroupId
            self.resourceId = resourceId
            self.sourceArn = sourceArn
            self.sourceRoleArn = sourceRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
            case packagingGroupId = "packagingGroupId"
            case resourceId = "resourceId"
            case sourceArn = "sourceArn"
            case sourceRoleArn = "sourceRoleArn"
        }
    }

    public struct CreateAssetResponse: AWSShape {

        public let arn: String?
        public let createdAt: String?
        public let egressEndpoints: [EgressEndpoint]?
        public let id: String?
        public let packagingGroupId: String?
        public let resourceId: String?
        public let sourceArn: String?
        public let sourceRoleArn: String?

        public init(arn: String? = nil, createdAt: String? = nil, egressEndpoints: [EgressEndpoint]? = nil, id: String? = nil, packagingGroupId: String? = nil, resourceId: String? = nil, sourceArn: String? = nil, sourceRoleArn: String? = nil) {
            self.arn = arn
            self.createdAt = createdAt
            self.egressEndpoints = egressEndpoints
            self.id = id
            self.packagingGroupId = packagingGroupId
            self.resourceId = resourceId
            self.sourceArn = sourceArn
            self.sourceRoleArn = sourceRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdAt = "createdAt"
            case egressEndpoints = "egressEndpoints"
            case id = "id"
            case packagingGroupId = "packagingGroupId"
            case resourceId = "resourceId"
            case sourceArn = "sourceArn"
            case sourceRoleArn = "sourceRoleArn"
        }
    }

    public struct CreatePackagingConfigurationRequest: AWSShape {

        public let cmafPackage: CmafPackage?
        public let dashPackage: DashPackage?
        public let hlsPackage: HlsPackage?
        public let id: String
        public let mssPackage: MssPackage?
        public let packagingGroupId: String

        public init(cmafPackage: CmafPackage? = nil, dashPackage: DashPackage? = nil, hlsPackage: HlsPackage? = nil, id: String, mssPackage: MssPackage? = nil, packagingGroupId: String) {
            self.cmafPackage = cmafPackage
            self.dashPackage = dashPackage
            self.hlsPackage = hlsPackage
            self.id = id
            self.mssPackage = mssPackage
            self.packagingGroupId = packagingGroupId
        }

        private enum CodingKeys: String, CodingKey {
            case cmafPackage = "cmafPackage"
            case dashPackage = "dashPackage"
            case hlsPackage = "hlsPackage"
            case id = "id"
            case mssPackage = "mssPackage"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct CreatePackagingConfigurationResponse: AWSShape {

        public let arn: String?
        public let cmafPackage: CmafPackage?
        public let dashPackage: DashPackage?
        public let hlsPackage: HlsPackage?
        public let id: String?
        public let mssPackage: MssPackage?
        public let packagingGroupId: String?

        public init(arn: String? = nil, cmafPackage: CmafPackage? = nil, dashPackage: DashPackage? = nil, hlsPackage: HlsPackage? = nil, id: String? = nil, mssPackage: MssPackage? = nil, packagingGroupId: String? = nil) {
            self.arn = arn
            self.cmafPackage = cmafPackage
            self.dashPackage = dashPackage
            self.hlsPackage = hlsPackage
            self.id = id
            self.mssPackage = mssPackage
            self.packagingGroupId = packagingGroupId
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case cmafPackage = "cmafPackage"
            case dashPackage = "dashPackage"
            case hlsPackage = "hlsPackage"
            case id = "id"
            case mssPackage = "mssPackage"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct CreatePackagingGroupRequest: AWSShape {

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct CreatePackagingGroupResponse: AWSShape {

        public let arn: String?
        public let domainName: String?
        public let id: String?

        public init(arn: String? = nil, domainName: String? = nil, id: String? = nil) {
            self.arn = arn
            self.domainName = domainName
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case domainName = "domainName"
            case id = "id"
        }
    }

    public struct DashEncryption: AWSShape {

        public let spekeKeyProvider: SpekeKeyProvider

        public init(spekeKeyProvider: SpekeKeyProvider) {
            self.spekeKeyProvider = spekeKeyProvider
        }

        private enum CodingKeys: String, CodingKey {
            case spekeKeyProvider = "spekeKeyProvider"
        }
    }

    public struct DashManifest: AWSShape {

        /// Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.
        public let manifestLayout: ManifestLayout?
        /// An optional string to include in the name of the manifest.
        public let manifestName: String?
        /// Minimum duration (in seconds) that a player will buffer media before starting the presentation.
        public let minBufferTimeSeconds: Int?
        /// The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
        public let profile: Profile?
        public let streamSelection: StreamSelection?

        public init(manifestLayout: ManifestLayout? = nil, manifestName: String? = nil, minBufferTimeSeconds: Int? = nil, profile: Profile? = nil, streamSelection: StreamSelection? = nil) {
            self.manifestLayout = manifestLayout
            self.manifestName = manifestName
            self.minBufferTimeSeconds = minBufferTimeSeconds
            self.profile = profile
            self.streamSelection = streamSelection
        }

        private enum CodingKeys: String, CodingKey {
            case manifestLayout = "manifestLayout"
            case manifestName = "manifestName"
            case minBufferTimeSeconds = "minBufferTimeSeconds"
            case profile = "profile"
            case streamSelection = "streamSelection"
        }
    }

    public struct DashPackage: AWSShape {

        /// A list of DASH manifest configurations.
        public let dashManifests: [DashManifest]
        public let encryption: DashEncryption?
        /// A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
        /// Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
        /// be partitioned into more than one period. If the list contains "ADS", new periods will be created where
        /// the Asset contains SCTE-35 ad markers.
        public let periodTriggers: [Periodtriggerselement]?
        /// Duration (in seconds) of each segment. Actual segments will be
        /// rounded to the nearest multiple of the source segment duration.
        public let segmentDurationSeconds: Int?
        /// Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.
        public let segmentTemplateFormat: SegmentTemplateFormat?

        public init(dashManifests: [DashManifest], encryption: DashEncryption? = nil, periodTriggers: [Periodtriggerselement]? = nil, segmentDurationSeconds: Int? = nil, segmentTemplateFormat: SegmentTemplateFormat? = nil) {
            self.dashManifests = dashManifests
            self.encryption = encryption
            self.periodTriggers = periodTriggers
            self.segmentDurationSeconds = segmentDurationSeconds
            self.segmentTemplateFormat = segmentTemplateFormat
        }

        private enum CodingKeys: String, CodingKey {
            case dashManifests = "dashManifests"
            case encryption = "encryption"
            case periodTriggers = "periodTriggers"
            case segmentDurationSeconds = "segmentDurationSeconds"
            case segmentTemplateFormat = "segmentTemplateFormat"
        }
    }

    public struct DeleteAssetRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DeleteAssetResponse: AWSShape {


        public init() {
        }

    }

    public struct DeletePackagingConfigurationRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DeletePackagingConfigurationResponse: AWSShape {


        public init() {
        }

    }

    public struct DeletePackagingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DeletePackagingGroupResponse: AWSShape {


        public init() {
        }

    }

    public struct DescribeAssetRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DescribeAssetResponse: AWSShape {

        public let arn: String?
        public let createdAt: String?
        public let egressEndpoints: [EgressEndpoint]?
        public let id: String?
        public let packagingGroupId: String?
        public let resourceId: String?
        public let sourceArn: String?
        public let sourceRoleArn: String?

        public init(arn: String? = nil, createdAt: String? = nil, egressEndpoints: [EgressEndpoint]? = nil, id: String? = nil, packagingGroupId: String? = nil, resourceId: String? = nil, sourceArn: String? = nil, sourceRoleArn: String? = nil) {
            self.arn = arn
            self.createdAt = createdAt
            self.egressEndpoints = egressEndpoints
            self.id = id
            self.packagingGroupId = packagingGroupId
            self.resourceId = resourceId
            self.sourceArn = sourceArn
            self.sourceRoleArn = sourceRoleArn
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case createdAt = "createdAt"
            case egressEndpoints = "egressEndpoints"
            case id = "id"
            case packagingGroupId = "packagingGroupId"
            case resourceId = "resourceId"
            case sourceArn = "sourceArn"
            case sourceRoleArn = "sourceRoleArn"
        }
    }

    public struct DescribePackagingConfigurationRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DescribePackagingConfigurationResponse: AWSShape {

        public let arn: String?
        public let cmafPackage: CmafPackage?
        public let dashPackage: DashPackage?
        public let hlsPackage: HlsPackage?
        public let id: String?
        public let mssPackage: MssPackage?
        public let packagingGroupId: String?

        public init(arn: String? = nil, cmafPackage: CmafPackage? = nil, dashPackage: DashPackage? = nil, hlsPackage: HlsPackage? = nil, id: String? = nil, mssPackage: MssPackage? = nil, packagingGroupId: String? = nil) {
            self.arn = arn
            self.cmafPackage = cmafPackage
            self.dashPackage = dashPackage
            self.hlsPackage = hlsPackage
            self.id = id
            self.mssPackage = mssPackage
            self.packagingGroupId = packagingGroupId
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case cmafPackage = "cmafPackage"
            case dashPackage = "dashPackage"
            case hlsPackage = "hlsPackage"
            case id = "id"
            case mssPackage = "mssPackage"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct DescribePackagingGroupRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "id", location: .uri(locationName: "id"))
        ]

        public let id: String

        public init(id: String) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id = "id"
        }
    }

    public struct DescribePackagingGroupResponse: AWSShape {

        public let arn: String?
        public let domainName: String?
        public let id: String?

        public init(arn: String? = nil, domainName: String? = nil, id: String? = nil) {
            self.arn = arn
            self.domainName = domainName
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case domainName = "domainName"
            case id = "id"
        }
    }

    public struct EgressEndpoint: AWSShape {

        /// The ID of the PackagingConfiguration being applied to the Asset.
        public let packagingConfigurationId: String?
        /// The URL of the parent manifest for the repackaged Asset.
        public let url: String?

        public init(packagingConfigurationId: String? = nil, url: String? = nil) {
            self.packagingConfigurationId = packagingConfigurationId
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case packagingConfigurationId = "packagingConfigurationId"
            case url = "url"
        }
    }

    public struct HlsEncryption: AWSShape {

        /// A constant initialization vector for encryption (optional).
        /// When not specified the initialization vector will be periodically rotated.
        public let constantInitializationVector: String?
        /// The encryption method to use.
        public let encryptionMethod: EncryptionMethod?
        public let spekeKeyProvider: SpekeKeyProvider

        public init(constantInitializationVector: String? = nil, encryptionMethod: EncryptionMethod? = nil, spekeKeyProvider: SpekeKeyProvider) {
            self.constantInitializationVector = constantInitializationVector
            self.encryptionMethod = encryptionMethod
            self.spekeKeyProvider = spekeKeyProvider
        }

        private enum CodingKeys: String, CodingKey {
            case constantInitializationVector = "constantInitializationVector"
            case encryptionMethod = "encryptionMethod"
            case spekeKeyProvider = "spekeKeyProvider"
        }
    }

    public struct HlsManifest: AWSShape {

        /// This setting controls how ad markers are included in the packaged OriginEndpoint.
        /// "NONE" will omit all SCTE-35 ad markers from the output.
        /// "PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
        /// markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
        /// "SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
        /// messages in the input source.
        public let adMarkers: AdMarkers?
        /// When enabled, an I-Frame only stream will be included in the output.
        public let includeIframeOnlyStream: Bool?
        /// An optional string to include in the name of the manifest.
        public let manifestName: String?
        /// The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
        /// inserted into manifests. Additionally, when an interval is specified
        /// ID3Timed Metadata messages will be generated every 5 seconds using the
        /// ingest time of the content.
        /// If the interval is not specified, or set to 0, then
        /// no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
        /// ID3Timed Metadata messages will be generated. Note that irrespective
        /// of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
        /// it will be passed through to HLS output.
        public let programDateTimeIntervalSeconds: Int?
        /// When enabled, the EXT-X-KEY tag will be repeated in output manifests.
        public let repeatExtXKey: Bool?
        public let streamSelection: StreamSelection?

        public init(adMarkers: AdMarkers? = nil, includeIframeOnlyStream: Bool? = nil, manifestName: String? = nil, programDateTimeIntervalSeconds: Int? = nil, repeatExtXKey: Bool? = nil, streamSelection: StreamSelection? = nil) {
            self.adMarkers = adMarkers
            self.includeIframeOnlyStream = includeIframeOnlyStream
            self.manifestName = manifestName
            self.programDateTimeIntervalSeconds = programDateTimeIntervalSeconds
            self.repeatExtXKey = repeatExtXKey
            self.streamSelection = streamSelection
        }

        private enum CodingKeys: String, CodingKey {
            case adMarkers = "adMarkers"
            case includeIframeOnlyStream = "includeIframeOnlyStream"
            case manifestName = "manifestName"
            case programDateTimeIntervalSeconds = "programDateTimeIntervalSeconds"
            case repeatExtXKey = "repeatExtXKey"
            case streamSelection = "streamSelection"
        }
    }

    public struct HlsPackage: AWSShape {

        public let encryption: HlsEncryption?
        /// A list of HLS manifest configurations.
        public let hlsManifests: [HlsManifest]
        /// Duration (in seconds) of each fragment. Actual fragments will be
        /// rounded to the nearest multiple of the source fragment duration.
        public let segmentDurationSeconds: Int?
        /// When enabled, audio streams will be placed in rendition groups in the output.
        public let useAudioRenditionGroup: Bool?

        public init(encryption: HlsEncryption? = nil, hlsManifests: [HlsManifest], segmentDurationSeconds: Int? = nil, useAudioRenditionGroup: Bool? = nil) {
            self.encryption = encryption
            self.hlsManifests = hlsManifests
            self.segmentDurationSeconds = segmentDurationSeconds
            self.useAudioRenditionGroup = useAudioRenditionGroup
        }

        private enum CodingKeys: String, CodingKey {
            case encryption = "encryption"
            case hlsManifests = "hlsManifests"
            case segmentDurationSeconds = "segmentDurationSeconds"
            case useAudioRenditionGroup = "useAudioRenditionGroup"
        }
    }

    public struct ListAssetsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSMemberEncoding(label: "packagingGroupId", location: .querystring(locationName: "packagingGroupId"))
        ]

        public let maxResults: Int?
        public let nextToken: String?
        public let packagingGroupId: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, packagingGroupId: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.packagingGroupId = packagingGroupId
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct ListAssetsResponse: AWSShape {

        public let assets: [AssetShallow]?
        public let nextToken: String?

        public init(assets: [AssetShallow]? = nil, nextToken: String? = nil) {
            self.assets = assets
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case assets = "assets"
            case nextToken = "nextToken"
        }
    }

    public struct ListPackagingConfigurationsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken")), 
            AWSMemberEncoding(label: "packagingGroupId", location: .querystring(locationName: "packagingGroupId"))
        ]

        public let maxResults: Int?
        public let nextToken: String?
        public let packagingGroupId: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil, packagingGroupId: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.packagingGroupId = packagingGroupId
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct ListPackagingConfigurationsResponse: AWSShape {

        public let nextToken: String?
        public let packagingConfigurations: [PackagingConfiguration]?

        public init(nextToken: String? = nil, packagingConfigurations: [PackagingConfiguration]? = nil) {
            self.nextToken = nextToken
            self.packagingConfigurations = packagingConfigurations
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case packagingConfigurations = "packagingConfigurations"
        }
    }

    public struct ListPackagingGroupsRequest: AWSShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring(locationName: "maxResults")), 
            AWSMemberEncoding(label: "nextToken", location: .querystring(locationName: "nextToken"))
        ]

        public let maxResults: Int?
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name:"maxResults", parent: name, max: 1000)
            try validate(self.maxResults, name:"maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListPackagingGroupsResponse: AWSShape {

        public let nextToken: String?
        public let packagingGroups: [PackagingGroup]?

        public init(nextToken: String? = nil, packagingGroups: [PackagingGroup]? = nil) {
            self.nextToken = nextToken
            self.packagingGroups = packagingGroups
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "nextToken"
            case packagingGroups = "packagingGroups"
        }
    }

    public struct MssEncryption: AWSShape {

        public let spekeKeyProvider: SpekeKeyProvider

        public init(spekeKeyProvider: SpekeKeyProvider) {
            self.spekeKeyProvider = spekeKeyProvider
        }

        private enum CodingKeys: String, CodingKey {
            case spekeKeyProvider = "spekeKeyProvider"
        }
    }

    public struct MssManifest: AWSShape {

        /// An optional string to include in the name of the manifest.
        public let manifestName: String?
        public let streamSelection: StreamSelection?

        public init(manifestName: String? = nil, streamSelection: StreamSelection? = nil) {
            self.manifestName = manifestName
            self.streamSelection = streamSelection
        }

        private enum CodingKeys: String, CodingKey {
            case manifestName = "manifestName"
            case streamSelection = "streamSelection"
        }
    }

    public struct MssPackage: AWSShape {

        public let encryption: MssEncryption?
        /// A list of MSS manifest configurations.
        public let mssManifests: [MssManifest]
        /// The duration (in seconds) of each segment.
        public let segmentDurationSeconds: Int?

        public init(encryption: MssEncryption? = nil, mssManifests: [MssManifest], segmentDurationSeconds: Int? = nil) {
            self.encryption = encryption
            self.mssManifests = mssManifests
            self.segmentDurationSeconds = segmentDurationSeconds
        }

        private enum CodingKeys: String, CodingKey {
            case encryption = "encryption"
            case mssManifests = "mssManifests"
            case segmentDurationSeconds = "segmentDurationSeconds"
        }
    }

    public struct PackagingConfiguration: AWSShape {

        /// The ARN of the PackagingConfiguration.
        public let arn: String?
        public let cmafPackage: CmafPackage?
        public let dashPackage: DashPackage?
        public let hlsPackage: HlsPackage?
        /// The ID of the PackagingConfiguration.
        public let id: String?
        public let mssPackage: MssPackage?
        /// The ID of a PackagingGroup.
        public let packagingGroupId: String?

        public init(arn: String? = nil, cmafPackage: CmafPackage? = nil, dashPackage: DashPackage? = nil, hlsPackage: HlsPackage? = nil, id: String? = nil, mssPackage: MssPackage? = nil, packagingGroupId: String? = nil) {
            self.arn = arn
            self.cmafPackage = cmafPackage
            self.dashPackage = dashPackage
            self.hlsPackage = hlsPackage
            self.id = id
            self.mssPackage = mssPackage
            self.packagingGroupId = packagingGroupId
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case cmafPackage = "cmafPackage"
            case dashPackage = "dashPackage"
            case hlsPackage = "hlsPackage"
            case id = "id"
            case mssPackage = "mssPackage"
            case packagingGroupId = "packagingGroupId"
        }
    }

    public struct PackagingGroup: AWSShape {

        /// The ARN of the PackagingGroup.
        public let arn: String?
        /// The fully qualified domain name for Assets in the PackagingGroup.
        public let domainName: String?
        /// The ID of the PackagingGroup.
        public let id: String?

        public init(arn: String? = nil, domainName: String? = nil, id: String? = nil) {
            self.arn = arn
            self.domainName = domainName
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case domainName = "domainName"
            case id = "id"
        }
    }

    public struct SpekeKeyProvider: AWSShape {

        /// An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
        /// MediaPackage will assume when accessing the key provider service.
        public let roleArn: String
        /// The system IDs to include in key requests.
        public let systemIds: [String]
        /// The URL of the external key provider service.
        public let url: String

        public init(roleArn: String, systemIds: [String], url: String) {
            self.roleArn = roleArn
            self.systemIds = systemIds
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case roleArn = "roleArn"
            case systemIds = "systemIds"
            case url = "url"
        }
    }

    public struct StreamSelection: AWSShape {

        /// The maximum video bitrate (bps) to include in output.
        public let maxVideoBitsPerSecond: Int?
        /// The minimum video bitrate (bps) to include in output.
        public let minVideoBitsPerSecond: Int?
        /// A directive that determines the order of streams in the output.
        public let streamOrder: StreamOrder?

        public init(maxVideoBitsPerSecond: Int? = nil, minVideoBitsPerSecond: Int? = nil, streamOrder: StreamOrder? = nil) {
            self.maxVideoBitsPerSecond = maxVideoBitsPerSecond
            self.minVideoBitsPerSecond = minVideoBitsPerSecond
            self.streamOrder = streamOrder
        }

        private enum CodingKeys: String, CodingKey {
            case maxVideoBitsPerSecond = "maxVideoBitsPerSecond"
            case minVideoBitsPerSecond = "minVideoBitsPerSecond"
            case streamOrder = "streamOrder"
        }
    }
}
