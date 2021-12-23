// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders

extension Paths {
    public static var activity: Activity {
        Activity(path: "/activity")
    }

    public struct Activity {
        /// Path: `/activity`
        public let path: String

        /// Retrieve a list of API Requests that have been made.
        public func get(limit: Int? = nil, offset: Int? = nil) -> Request<[OnePasswordAPI.APIRequest]> {
            .get(path, query: makeGetQuery(limit, offset))
        }

        public enum GetResponseHeaders {
            /// An decription of what part of the collection has been returned as well as the total size.
            public static let contentRange = HTTPHeader<String>(field: "Content-Range")
        }

        private func makeGetQuery(_ limit: Int?, _ offset: Int?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("limit", limit?.asQueryValue)
            query.addQueryItem("offset", offset?.asQueryValue)
            return query
        }
    }
}

extension Paths {
    public static var vaults: Vaults {
        Vaults(path: "/vaults")
    }

    public struct Vaults {
        /// Path: `/vaults`
        public let path: String

        /// Get all Vaults
        public func get(filter: String? = nil) -> Request<[OnePasswordAPI.Vault]> {
            .get(path, query: makeGetQuery(filter))
        }

        private func makeGetQuery(_ filter: String?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("filter", filter?.asQueryValue)
            return query
        }
    }
}

extension Paths.Vaults {
    public func vaultUUID(_ vaultUUID: String) -> WithVaultUUID {
        WithVaultUUID(path: "\(path)/\(vaultUUID)")
    }

    public struct WithVaultUUID {
        /// Path: `/vaults/{vaultUuid}`
        public let path: String

        /// Get Vault details and metadata
        public var get: Request<OnePasswordAPI.Vault> {
            .get(path)
        }
    }
}

extension Paths.Vaults.WithVaultUUID {
    public var items: Items {
        Items(path: path + "/items")
    }

    public struct Items {
        /// Path: `/vaults/{vaultUuid}/items`
        public let path: String

        /// Get all items for inside a Vault
        public func get(filter: String? = nil) -> Request<[OnePasswordAPI.Item]> {
            .get(path, query: makeGetQuery(filter))
        }

        private func makeGetQuery(_ filter: String?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("filter", filter?.asQueryValue)
            return query
        }

        /// Create a new Item
        public func post(_ body: OnePasswordAPI.FullItem? = nil) -> Request<OnePasswordAPI.FullItem> {
            .post(path, body: body)
        }
    }
}

extension Paths.Vaults.WithVaultUUID.Items {
    public func itemUUID(_ itemUUID: String) -> WithItemUUID {
        WithItemUUID(path: "\(path)/\(itemUUID)")
    }

    public struct WithItemUUID {
        /// Path: `/vaults/{vaultUuid}/items/{itemUuid}`
        public let path: String

        /// Get the details of an Item
        public var get: Request<OnePasswordAPI.FullItem> {
            .get(path)
        }

        /// Update an Item
        public func put(_ body: OnePasswordAPI.FullItem? = nil) -> Request<OnePasswordAPI.FullItem> {
            .put(path, body: body)
        }

        /// Update a subset of Item attributes
        ///
        /// Applies a modified [RFC6902 JSON Patch](https://tools.ietf.org/html/rfc6902) document to an Item or ItemField. This endpoint only supports `add`, `remove` and `replace` operations.
        /// 
        /// When modifying a specific ItemField, the ItemField's ID in the `path` attribute of the operation object: `/fields/{fieldId}`
        public func patch(_ body: OnePasswordAPI.Patch? = nil) -> Request<OnePasswordAPI.FullItem> {
            .patch(path, body: body)
        }

        /// Delete an Item
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

extension Paths.Vaults.WithVaultUUID.Items.WithItemUUID {
    public var files: Files {
        Files(path: path + "/files")
    }

    public struct Files {
        /// Path: `/vaults/{vaultUuid}/items/{itemUuid}/files`
        public let path: String

        /// Get all the files inside an Item
        public func get(isInlineFiles: Bool? = nil) -> Request<[OnePasswordAPI.File]> {
            .get(path, query: makeGetQuery(isInlineFiles))
        }

        private func makeGetQuery(_ isInlineFiles: Bool?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("inline_files", isInlineFiles?.asQueryValue)
            return query
        }
    }
}

extension Paths.Vaults.WithVaultUUID.Items.WithItemUUID.Files {
    public func fileUUID(_ fileUUID: String) -> WithFileUUID {
        WithFileUUID(path: "\(path)/\(fileUUID)")
    }

    public struct WithFileUUID {
        /// Path: `/vaults/{vaultUuid}/items/{itemUuid}/files/{fileUuid}`
        public let path: String

        /// Get the details of a File
        public func get(isInlineFiles: Bool? = nil) -> Request<OnePasswordAPI.File> {
            .get(path, query: makeGetQuery(isInlineFiles))
        }

        private func makeGetQuery(_ isInlineFiles: Bool?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("inline_files", isInlineFiles?.asQueryValue)
            return query
        }
    }
}

extension Paths.Vaults.WithVaultUUID.Items.WithItemUUID.Files.WithFileUUID {
    public var content: Content {
        Content(path: path + "/content")
    }

    public struct Content {
        /// Path: `/vaults/{vaultUuid}/items/{itemUuid}/files/{fileUuid}/content`
        public let path: String

        /// Get the content of a File
        public var get: Request<Data> {
            .get(path)
        }

        public enum GetResponseHeaders {
            public static let contentDisposition = HTTPHeader<String>(field: "Content-Disposition")
            public static let contentLength = HTTPHeader<String>(field: "Content-Length")
        }
    }
}

extension Paths {
    public static var heartbeat: Heartbeat {
        Heartbeat(path: "/heartbeat")
    }

    public struct Heartbeat {
        /// Path: `/heartbeat`
        public let path: String

        /// Ping the server for liveness
        public var get: Request<String> {
            .get(path)
        }
    }
}

extension Paths {
    public static var health: Health {
        Health(path: "/health")
    }

    public struct Health {
        /// Path: `/health`
        public let path: String

        /// Get state of the server and its dependencies.
        public var get: Request<GetResponse> {
            .get(path)
        }

        public struct GetResponse: Decodable {
            public var name: String
            /// The Connect server's version
            public var version: String
            public var dependencies: [OnePasswordAPI.ServiceDependency]?

            public init(name: String, version: String, dependencies: [OnePasswordAPI.ServiceDependency]? = nil) {
                self.name = name
                self.version = version
                self.dependencies = dependencies
            }
        }
    }
}

extension Paths {
    public static var metrics: Metrics {
        Metrics(path: "/metrics")
    }

    public struct Metrics {
        /// Path: `/metrics`
        public let path: String

        /// Query server for exposed Prometheus metrics
        ///
        /// See Prometheus documentation for a complete data model.
        public var get: Request<String> {
            .get(path)
        }
    }
}

public enum Paths {}

extension Bool {
    var asQueryValue: String {
        self ? "true" : "false"
    }
}

extension Date {
    var asQueryValue: String {
        ISO8601DateFormatter().string(from: self)
    }
}

extension Double {
    var asQueryValue: String {
        String(self)
    }
}

extension Int {
    var asQueryValue: String {
        String(self)
    }
}

extension Int32 {
    var asQueryValue: String {
        String(self)
    }
}

extension Int64 {
    var asQueryValue: String {
        String(self)
    }
}

extension String {
    var asQueryValue: String {
        self
    }
}

extension URL {
    var asQueryValue: String {
        absoluteString
    }
}

extension RawRepresentable where RawValue == String {
    var asQueryValue: String {
        rawValue
    }
}

extension Array where Element == (String, String?) {
    mutating func addQueryItem(_ name: String, _ value: String?) {
        guard let value = value, !value.isEmpty else { return }
        append((name, value))
    }

    var asPercentEncodedQuery: String {
        var components = URLComponents()
        components.queryItems = self.map(URLQueryItem.init)
        return components.percentEncodedQuery ?? ""
    }
}
