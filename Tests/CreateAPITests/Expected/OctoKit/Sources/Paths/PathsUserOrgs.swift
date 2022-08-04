// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }

    public struct Orgs {
        /// Path: `/user/orgs`
        public let path: String

        /// List organizations for the authenticated user
        ///
        /// List organizations for the authenticated user.
        /// 
        /// **OAuth scope requirements**
        /// 
        /// This only lists organizations that your authorization allows you to operate on in some way (e.g., you can list teams with `read:org` scope, you can publicize your organization membership with `user` scope, etc.). Therefore, this API requires at least `user` or `read:org` scope. OAuth requests with insufficient scope receive a `403 Forbidden` response.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#list-organizations-for-the-authenticated-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.OrganizationSimple]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page))
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}