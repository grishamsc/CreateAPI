// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// Pull Request Review Comments are comments on a portion of the Pull Request's diff.
public struct PullRequestReviewComment: Codable {
    /// URL for the pull request review comment
    ///
    /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/comments/1"
    public var url: String
    /// The ID of the pull request review to which the comment belongs.
    ///
    /// Example: 42
    public var pullRequestReviewID: Int?
    /// The ID of the pull request review comment.
    public var id: Int
    /// The node ID of the pull request review comment.
    ///
    /// Example: "MDI0OlB1bGxSZXF1ZXN0UmV2aWV3Q29tbWVudDEw"
    public var nodeID: String
    /// The diff of the line that the comment refers to.
    ///
    /// Example: "@@ -16,33 +16,40 @@ public class Connection : IConnection..."
    public var diffHunk: String
    /// The relative path of the file to which the comment applies.
    ///
    /// Example: "config/database.yaml"
    public var path: String
    /// The line index in the diff to which the comment applies.
    public var position: Int
    /// The index of the original line in the diff to which the comment applies.
    public var originalPosition: Int
    /// The SHA of the commit to which the comment applies.
    ///
    /// Example: "6dcb09b5b57875f334f61aebed695e2e4193db5e"
    public var commitID: String
    /// The SHA of the original commit to which the comment applies.
    ///
    /// Example: "9c48853fa3dc5c1c3d6f1f1cd1f2743e72652840"
    public var originalCommitID: String
    /// The comment ID to reply to.
    public var inReplyToID: Int?
    /// Simple User
    public var user: SimpleUser
    /// The text of the comment.
    ///
    /// Example: "We should probably include a check for null values here."
    public var body: String
    /// Example: "2011-04-14T16:00:49Z"
    public var createdAt: Date
    /// Example: "2011-04-14T16:00:49Z"
    public var updatedAt: Date
    /// HTML URL for the pull request review comment.
    ///
    /// Example: "https://github.com/octocat/Hello-World/pull/1#discussion-diff-1"
    public var htmlURL: URL
    /// URL for the pull request that the review comment belongs to.
    ///
    /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/1"
    public var pullRequestURL: URL
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation
    public var links: Links
    /// The first line of the range for a multi-line comment.
    public var startLine: Int?
    /// The first line of the range for a multi-line comment.
    public var originalStartLine: Int?
    /// The side of the first line of the range for a multi-line comment.
    public var startSide: StartSide?
    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    public var line: Int?
    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    public var originalLine: Int?
    /// The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment
    public var side: Side?
    /// Reaction Rollup
    public var reactions: ReactionRollup?
    /// Example: "<p>comment body</p>"
    public var bodyHTML: String?
    /// Example: "comment body"
    public var bodyText: String?

    public struct Links: Codable {
        public var this: `Self`
        public var html: HTML
        public var pullRequest: PullRequest

        public struct `Self`: Codable {
            /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/comments/1"
            public var href: URL

            public init(href: URL) {
                self.href = href
            }
        }

        public struct HTML: Codable {
            /// Example: "https://github.com/octocat/Hello-World/pull/1#discussion-diff-1"
            public var href: URL

            public init(href: URL) {
                self.href = href
            }
        }

        public struct PullRequest: Codable {
            /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/1"
            public var href: URL

            public init(href: URL) {
                self.href = href
            }
        }

        public init(this: `Self`, html: HTML, pullRequest: PullRequest) {
            self.this = this
            self.html = html
            self.pullRequest = pullRequest
        }

        private enum CodingKeys: String, CodingKey {
            case this = "self"
            case html
            case pullRequest = "pull_request"
        }
    }

    /// The side of the first line of the range for a multi-line comment.
    public enum StartSide: String, Codable, CaseIterable {
        case left = "LEFT"
        case right = "RIGHT"
    }

    /// The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment
    public enum Side: String, Codable, CaseIterable {
        case left = "LEFT"
        case right = "RIGHT"
    }

    public init(url: String, pullRequestReviewID: Int? = nil, id: Int, nodeID: String, diffHunk: String, path: String, position: Int, originalPosition: Int, commitID: String, originalCommitID: String, inReplyToID: Int? = nil, user: SimpleUser, body: String, createdAt: Date, updatedAt: Date, htmlURL: URL, pullRequestURL: URL, authorAssociation: AuthorAssociation, links: Links, startLine: Int? = nil, originalStartLine: Int? = nil, startSide: StartSide? = nil, line: Int? = nil, originalLine: Int? = nil, side: Side? = nil, reactions: ReactionRollup? = nil, bodyHTML: String? = nil, bodyText: String? = nil) {
        self.url = url
        self.pullRequestReviewID = pullRequestReviewID
        self.id = id
        self.nodeID = nodeID
        self.diffHunk = diffHunk
        self.path = path
        self.position = position
        self.originalPosition = originalPosition
        self.commitID = commitID
        self.originalCommitID = originalCommitID
        self.inReplyToID = inReplyToID
        self.user = user
        self.body = body
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.htmlURL = htmlURL
        self.pullRequestURL = pullRequestURL
        self.authorAssociation = authorAssociation
        self.links = links
        self.startLine = startLine
        self.originalStartLine = originalStartLine
        self.startSide = startSide
        self.line = line
        self.originalLine = originalLine
        self.side = side
        self.reactions = reactions
        self.bodyHTML = bodyHTML
        self.bodyText = bodyText
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case pullRequestReviewID = "pull_request_review_id"
        case id
        case nodeID = "node_id"
        case diffHunk = "diff_hunk"
        case path
        case position
        case originalPosition = "original_position"
        case commitID = "commit_id"
        case originalCommitID = "original_commit_id"
        case inReplyToID = "in_reply_to_id"
        case user
        case body
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case htmlURL = "html_url"
        case pullRequestURL = "pull_request_url"
        case authorAssociation = "author_association"
        case links = "_links"
        case startLine = "start_line"
        case originalStartLine = "original_start_line"
        case startSide = "start_side"
        case line
        case originalLine = "original_line"
        case side
        case reactions
        case bodyHTML = "body_html"
        case bodyText = "body_text"
    }
}