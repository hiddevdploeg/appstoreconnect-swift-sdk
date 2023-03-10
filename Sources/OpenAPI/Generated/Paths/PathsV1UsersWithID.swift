// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Users {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/users/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.UserResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsUsers: [FieldsUsers]?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var limitVisibleApps: Int?

			public enum FieldsUsers: String, Codable, CaseIterable {
				case allAppsVisible
				case firstName
				case lastName
				case provisioningAllowed
				case roles
				case username
				case visibleApps
			}

			public enum Include: String, Codable, CaseIterable {
				case visibleApps
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

			public init(fieldsUsers: [FieldsUsers]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) {
				self.fieldsUsers = fieldsUsers
				self.include = include
				self.fieldsApps = fieldsApps
				self.limitVisibleApps = limitVisibleApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsUsers, forKey: "fields[users]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.UserUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.UserResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
