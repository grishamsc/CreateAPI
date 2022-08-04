// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
    public static var pets: Pets {
        Pets(path: "/pets")
    }

    public struct Pets {
        /// Path: `/pets`
        public let path: String

        /// List all pets
        public func get(limit: Int? = nil) -> Request<[petstore_base_class.Pet]> {
            Request(method: "GET", url: path, query: makeGetQuery(limit))
        }

        public enum GetResponseHeaders {
            /// A link to the next page of responses
            public static let next = HTTPHeader<String>(field: "x-next")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        /// Create a pet
        public var post: Request<Void> {
            Request(method: "POST", url: path)
        }
    }
}