// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct PullRequestReviewRequest: Codable {
    public var users: [SimpleUser]
    public var teams: [Team]

    public init(users: [SimpleUser], teams: [Team]) {
        self.users = users
        self.teams = teams
    }
}