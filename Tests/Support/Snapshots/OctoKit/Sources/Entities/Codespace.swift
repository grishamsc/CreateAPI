// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// A codespace.
public struct Codespace: Codable {
    public var id: Int
    /// Automatically generated name of this codespace.
    ///
    /// Example: "monalisa-octocat-hello-world-g4wpq6h95q"
    public var name: String
    /// UUID identifying this codespace's environment.
    ///
    /// Example: "26a7c758-7299-4a73-b978-5a92a7ae98a0"
    public var environmentID: String?
    /// Simple User
    public var owner: SimpleUser
    /// Simple User
    public var billableOwner: SimpleUser
    /// Minimal Repository
    public var repository: MinimalRepository
    /// Codespace machine
    ///
    /// A description of the machine powering a codespace.
    public var machine: CodespaceMachine?
    /// Whether the codespace was created from a prebuild.
    ///
    /// Example: false
    public var isPrebuild: Bool?
    /// Example: "2011-01-26T19:01:12Z"
    public var createdAt: Date
    /// Example: "2011-01-26T19:01:12Z"
    public var updatedAt: Date
    /// Last known time this codespace was started.
    ///
    /// Example: "2011-01-26T19:01:12Z"
    public var lastUsedAt: Date
    /// State of this codespace.
    ///
    /// Example: "Available"
    public var state: State
    /// API URL for this codespace.
    public var url: URL
    /// Details about the codespace's git repository.
    public var gitStatus: GitStatus
    /// The Azure region where this codespace is located.
    ///
    /// Example: "WestUs2"
    public var location: Location
    /// The number of minutes of inactivity after which this codespace will be automatically stopped.
    ///
    /// Example: 60
    public var idleTimeoutMinutes: Int?
    /// URL to access this codespace on the web.
    public var webURL: URL
    /// API URL to access available alternate machine types for this codespace.
    public var machinesURL: URL
    /// API URL to start this codespace.
    public var startURL: URL
    /// API URL to stop this codespace.
    public var stopURL: URL
    /// API URL for the Pull Request associated with this codespace, if any.
    public var pullsURL: URL?
    public var recentFolders: [String]
    public var runtimeConstraints: RuntimeConstraints?

    /// State of this codespace.
    ///
    /// Example: "Available"
    public enum State: String, Codable, CaseIterable {
        case `none` = "None"
        case created = "Created"
        case queued = "Queued"
        case provisioning = "Provisioning"
        case available = "Available"
        case awaiting = "Awaiting"
        case unavailable = "Unavailable"
        case deleted = "Deleted"
        case moved = "Moved"
        case shutdown = "Shutdown"
        case archived = "Archived"
        case starting = "Starting"
        case shuttingDown = "ShuttingDown"
        case failed = "Failed"
        case exporting = "Exporting"
        case updating = "Updating"
        case rebuilding = "Rebuilding"
    }

    /// Details about the codespace's git repository.
    public struct GitStatus: Codable {
        /// The number of commits the local repository is ahead of the remote.
        public var ahead: Int?
        /// The number of commits the local repository is behind the remote.
        public var behind: Int?
        /// Whether the local repository has unpushed changes.
        public var hasUnpushedChanges: Bool?
        /// Whether the local repository has uncommitted changes.
        public var hasUncommittedChanges: Bool?
        /// The current branch (or SHA if in detached HEAD state) of the local repository.
        ///
        /// Example: "main"
        public var ref: String?

        public init(ahead: Int? = nil, behind: Int? = nil, hasUnpushedChanges: Bool? = nil, hasUncommittedChanges: Bool? = nil, ref: String? = nil) {
            self.ahead = ahead
            self.behind = behind
            self.hasUnpushedChanges = hasUnpushedChanges
            self.hasUncommittedChanges = hasUncommittedChanges
            self.ref = ref
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.ahead = try values.decodeIfPresent(Int.self, forKey: "ahead")
            self.behind = try values.decodeIfPresent(Int.self, forKey: "behind")
            self.hasUnpushedChanges = try values.decodeIfPresent(Bool.self, forKey: "has_unpushed_changes")
            self.hasUncommittedChanges = try values.decodeIfPresent(Bool.self, forKey: "has_uncommitted_changes")
            self.ref = try values.decodeIfPresent(String.self, forKey: "ref")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(ahead, forKey: "ahead")
            try values.encodeIfPresent(behind, forKey: "behind")
            try values.encodeIfPresent(hasUnpushedChanges, forKey: "has_unpushed_changes")
            try values.encodeIfPresent(hasUncommittedChanges, forKey: "has_uncommitted_changes")
            try values.encodeIfPresent(ref, forKey: "ref")
        }
    }

    /// The Azure region where this codespace is located.
    ///
    /// Example: "WestUs2"
    public enum Location: String, Codable, CaseIterable {
        case eastUs = "EastUs"
        case southEastAsia = "SouthEastAsia"
        case westEurope = "WestEurope"
        case westUs2 = "WestUs2"
    }

    public struct RuntimeConstraints: Codable {
        /// The privacy settings a user can select from when forwarding a port.
        public var allowedPortPrivacySettings: [String]?

        public init(allowedPortPrivacySettings: [String]? = nil) {
            self.allowedPortPrivacySettings = allowedPortPrivacySettings
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.allowedPortPrivacySettings = try values.decodeIfPresent([String].self, forKey: "allowed_port_privacy_settings")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(allowedPortPrivacySettings, forKey: "allowed_port_privacy_settings")
        }
    }

    public init(id: Int, name: String, environmentID: String? = nil, owner: SimpleUser, billableOwner: SimpleUser, repository: MinimalRepository, machine: CodespaceMachine? = nil, isPrebuild: Bool? = nil, createdAt: Date, updatedAt: Date, lastUsedAt: Date, state: State, url: URL, gitStatus: GitStatus, location: Location, idleTimeoutMinutes: Int? = nil, webURL: URL, machinesURL: URL, startURL: URL, stopURL: URL, pullsURL: URL? = nil, recentFolders: [String], runtimeConstraints: RuntimeConstraints? = nil) {
        self.id = id
        self.name = name
        self.environmentID = environmentID
        self.owner = owner
        self.billableOwner = billableOwner
        self.repository = repository
        self.machine = machine
        self.isPrebuild = isPrebuild
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lastUsedAt = lastUsedAt
        self.state = state
        self.url = url
        self.gitStatus = gitStatus
        self.location = location
        self.idleTimeoutMinutes = idleTimeoutMinutes
        self.webURL = webURL
        self.machinesURL = machinesURL
        self.startURL = startURL
        self.stopURL = stopURL
        self.pullsURL = pullsURL
        self.recentFolders = recentFolders
        self.runtimeConstraints = runtimeConstraints
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.environmentID = try values.decodeIfPresent(String.self, forKey: "environment_id")
        self.owner = try values.decode(SimpleUser.self, forKey: "owner")
        self.billableOwner = try values.decode(SimpleUser.self, forKey: "billable_owner")
        self.repository = try values.decode(MinimalRepository.self, forKey: "repository")
        self.machine = try values.decodeIfPresent(CodespaceMachine.self, forKey: "machine")
        self.isPrebuild = try values.decodeIfPresent(Bool.self, forKey: "prebuild")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.lastUsedAt = try values.decode(Date.self, forKey: "last_used_at")
        self.state = try values.decode(State.self, forKey: "state")
        self.url = try values.decode(URL.self, forKey: "url")
        self.gitStatus = try values.decode(GitStatus.self, forKey: "git_status")
        self.location = try values.decode(Location.self, forKey: "location")
        self.idleTimeoutMinutes = try values.decodeIfPresent(Int.self, forKey: "idle_timeout_minutes")
        self.webURL = try values.decode(URL.self, forKey: "web_url")
        self.machinesURL = try values.decode(URL.self, forKey: "machines_url")
        self.startURL = try values.decode(URL.self, forKey: "start_url")
        self.stopURL = try values.decode(URL.self, forKey: "stop_url")
        self.pullsURL = try values.decodeIfPresent(URL.self, forKey: "pulls_url")
        self.recentFolders = try values.decode([String].self, forKey: "recent_folders")
        self.runtimeConstraints = try values.decodeIfPresent(RuntimeConstraints.self, forKey: "runtime_constraints")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(environmentID, forKey: "environment_id")
        try values.encode(owner, forKey: "owner")
        try values.encode(billableOwner, forKey: "billable_owner")
        try values.encode(repository, forKey: "repository")
        try values.encodeIfPresent(machine, forKey: "machine")
        try values.encodeIfPresent(isPrebuild, forKey: "prebuild")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(lastUsedAt, forKey: "last_used_at")
        try values.encode(state, forKey: "state")
        try values.encode(url, forKey: "url")
        try values.encode(gitStatus, forKey: "git_status")
        try values.encode(location, forKey: "location")
        try values.encodeIfPresent(idleTimeoutMinutes, forKey: "idle_timeout_minutes")
        try values.encode(webURL, forKey: "web_url")
        try values.encode(machinesURL, forKey: "machines_url")
        try values.encode(startURL, forKey: "start_url")
        try values.encode(stopURL, forKey: "stop_url")
        try values.encodeIfPresent(pullsURL, forKey: "pulls_url")
        try values.encode(recentFolders, forKey: "recent_folders")
        try values.encodeIfPresent(runtimeConstraints, forKey: "runtime_constraints")
    }
}