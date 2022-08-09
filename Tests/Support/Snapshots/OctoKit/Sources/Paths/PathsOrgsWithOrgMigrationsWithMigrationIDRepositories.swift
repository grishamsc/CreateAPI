// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Migrations.WithMigrationID {
    public var repositories: Repositories {
        Repositories(path: path + "/repositories")
    }

    public struct Repositories {
        /// Path: `/orgs/{org}/migrations/{migration_id}/repositories`
        public let path: String

        /// List repositories in an organization migration
        ///
        /// List all the repositories for this organization migration.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/migrations#list-repositories-in-an-organization-migration)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.MinimalRepository]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "migrations/list-repos-for-org")
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