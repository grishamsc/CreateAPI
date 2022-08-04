// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Commits.WithCommitSha {
    public var comments: Comments {
        Comments(path: path + "/comments")
    }

    public struct Comments {
        /// Path: `/repos/{owner}/{repo}/commits/{commit_sha}/comments`
        public let path: String

        /// List commit comments
        ///
        /// Use the `:commit_sha` to specify the commit that will have its comments listed.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#list-commit-comments)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.CommitComment]> {
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

        /// Create a commit comment
        ///
        /// Create a comment for a commit using its `:commit_sha`.
        /// 
        /// This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in secondary rate limiting. See "[Secondary rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#secondary-rate-limits)" and "[Dealing with secondary rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-secondary-rate-limits)" for details.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#create-a-commit-comment)
        public func post(_ body: PostRequest) -> Request<OctoKit.CommitComment> {
            Request(method: "POST", url: path, body: body)
        }

        public enum PostResponseHeaders {
            public static let location = HTTPHeader<String>(field: "Location")
        }

        public struct PostRequest: Encodable {
            /// The contents of the comment.
            public var body: String
            /// Relative path of the file to comment on.
            public var path: String?
            /// Line index in the diff to comment on.
            public var position: Int?
            /// **Deprecated**. Use **position** parameter instead. Line number in the file to comment on.
            public var line: Int?

            public init(body: String, path: String? = nil, position: Int? = nil, line: Int? = nil) {
                self.body = body
                self.path = path
                self.position = position
                self.line = line
            }
        }
    }
}