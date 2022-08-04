// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Following {
    public func targetUser(_ targetUser: String) -> WithTargetUser {
        WithTargetUser(path: "\(path)/\(targetUser)")
    }

    public struct WithTargetUser {
        /// Path: `/users/{username}/following/{target_user}`
        public let path: String

        /// Check if a user follows another user
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#check-if-a-user-follows-another-user)
        public var get: Request<Void> {
            Request(method: "GET", url: path)
        }
    }
}