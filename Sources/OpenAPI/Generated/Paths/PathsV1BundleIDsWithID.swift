// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BundleIDs {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/bundleIds/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BundleIDResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsBundleIDs: [FieldsBundleIDs]?
			public var include: [Include]?
			public var fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]?
			public var fieldsProfiles: [FieldsProfiles]?
			public var fieldsApps: [FieldsApps]?
			public var limitBundleIDCapabilities: Int?
			public var limitProfiles: Int?

			public enum FieldsBundleIDs: String, Codable, CaseIterable {
				case app
				case bundleIDCapabilities = "bundleIdCapabilities"
				case identifier
				case name
				case platform
				case profiles
				case seedID = "seedId"
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case bundleIDCapabilities = "bundleIdCapabilities"
				case profiles
			}

			public enum FieldsBundleIDCapabilities: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case capabilityType
				case settings
			}

			public enum FieldsProfiles: String, Codable, CaseIterable {
				case bundleID = "bundleId"
				case certificates
				case createdDate
				case devices
				case expirationDate
				case name
				case platform
				case profileContent
				case profileState
				case profileType
				case uuid
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public init(fieldsBundleIDs: [FieldsBundleIDs]? = nil, include: [Include]? = nil, fieldsBundleIDCapabilities: [FieldsBundleIDCapabilities]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, fieldsApps: [FieldsApps]? = nil, limitBundleIDCapabilities: Int? = nil, limitProfiles: Int? = nil) {
				self.fieldsBundleIDs = fieldsBundleIDs
				self.include = include
				self.fieldsBundleIDCapabilities = fieldsBundleIDCapabilities
				self.fieldsProfiles = fieldsProfiles
				self.fieldsApps = fieldsApps
				self.limitBundleIDCapabilities = limitBundleIDCapabilities
				self.limitProfiles = limitProfiles
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsBundleIDCapabilities, forKey: "fields[bundleIdCapabilities]")
				encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitBundleIDCapabilities, forKey: "limit[bundleIdCapabilities]")
				encoder.encode(limitProfiles, forKey: "limit[profiles]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BundleIDUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BundleIDResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
