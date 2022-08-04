// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// Deployment
///
/// A deployment created as the result of an Actions check run from a workflow that references an environment
public struct DeploymentSimple: Codable {
    /// Example: "https://api.github.com/repos/octocat/example/deployments/1"
    public var url: URL
    /// Unique identifier of the deployment
    ///
    /// Example: 42
    public var id: Int
    /// Example: "MDEwOkRlcGxveW1lbnQx"
    public var nodeID: String
    /// Parameter to specify a task to execute
    ///
    /// Example: "deploy"
    public var task: String
    /// Example: "staging"
    public var originalEnvironment: String?
    /// Name for the target deployment environment.
    ///
    /// Example: "production"
    public var environment: String
    /// Example: "Deploy request from hubot"
    public var description: String?
    /// Example: "2012-07-20T01:19:13Z"
    public var createdAt: Date
    /// Example: "2012-07-20T01:19:13Z"
    public var updatedAt: Date
    /// Example: "https://api.github.com/repos/octocat/example/deployments/1/statuses"
    public var statusesURL: URL
    /// Example: "https://api.github.com/repos/octocat/example"
    public var repositoryURL: URL
    /// Specifies if the given environment is will no longer exist at some point in the future. Default: false.
    ///
    /// Example: true
    public var isTransientEnvironment: Bool?
    /// Specifies if the given environment is one that end-users directly interact with. Default: false.
    ///
    /// Example: true
    public var isProductionEnvironment: Bool?
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: Integration?

    public init(url: URL, id: Int, nodeID: String, task: String, originalEnvironment: String? = nil, environment: String, description: String? = nil, createdAt: Date, updatedAt: Date, statusesURL: URL, repositoryURL: URL, isTransientEnvironment: Bool? = nil, isProductionEnvironment: Bool? = nil, performedViaGithubApp: Integration? = nil) {
        self.url = url
        self.id = id
        self.nodeID = nodeID
        self.task = task
        self.originalEnvironment = originalEnvironment
        self.environment = environment
        self.description = description
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.statusesURL = statusesURL
        self.repositoryURL = repositoryURL
        self.isTransientEnvironment = isTransientEnvironment
        self.isProductionEnvironment = isProductionEnvironment
        self.performedViaGithubApp = performedViaGithubApp
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case id
        case nodeID = "node_id"
        case task
        case originalEnvironment = "original_environment"
        case environment
        case description
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case statusesURL = "statuses_url"
        case repositoryURL = "repository_url"
        case isTransientEnvironment = "transient_environment"
        case isProductionEnvironment = "production_environment"
        case performedViaGithubApp = "performed_via_github_app"
    }
}