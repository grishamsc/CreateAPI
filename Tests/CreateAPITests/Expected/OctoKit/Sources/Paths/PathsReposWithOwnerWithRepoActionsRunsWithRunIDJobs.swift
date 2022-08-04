// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var jobs: Jobs {
        Jobs(path: path + "/jobs")
    }

    public struct Jobs {
        /// Path: `/repos/{owner}/{repo}/actions/runs/{run_id}/jobs`
        public let path: String

        /// List jobs for a workflow run
        ///
        /// Lists jobs for a workflow run. Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint. You can use parameters to narrow the list of results. For more information about using parameters, see [Parameters](https://docs.github.com/rest/overview/resources-in-the-rest-api#parameters).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-jobs-for-a-workflow-run)
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery)
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var jobs: [OctoKit.Job]

            public init(totalCount: Int, jobs: [OctoKit.Job]) {
                self.totalCount = totalCount
                self.jobs = jobs
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case jobs
            }
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var filter: Filter?
            public var perPage: Int?
            public var page: Int?

            public enum Filter: String, Codable, CaseIterable {
                case latest
                case all
            }

            public init(filter: Filter? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.filter = filter
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(filter, forKey: "filter")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}