// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Hooks.WithHookID.Deliveries.WithDeliveryID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }

    public struct Attempts {
        /// Path: `/repos/{owner}/{repo}/hooks/{hook_id}/deliveries/{delivery_id}/attempts`
        public let path: String

        /// Redeliver a delivery for a repository webhook
        ///
        /// Redeliver a webhook delivery for a webhook configured in a repository.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#redeliver-a-delivery-for-a-repository-webhook)
        public var post: Request<Void> {
            Request(method: "POST", url: path)
        }
    }
}