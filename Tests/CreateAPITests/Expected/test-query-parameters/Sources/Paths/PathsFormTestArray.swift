// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension Paths.Form {
    public var testArray: TestArray {
        TestArray(path: path + "/test-array")
    }

    public struct TestArray {
        /// Path: `/form/test-array`
        public let path: String

        /// Form Array Explode True
        public func get(type: [String]) -> Request<Void> {
            Request(method: "GET", url: path, query: makeGetQuery(type))
        }

        private func makeGetQuery(_ type: [String]) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(type, forKey: "type")
            return encoder.items
        }

        /// Form Array Explode False
        public func post(type: [String]) -> Request<Void> {
            Request(method: "POST", url: path, query: makePostQuery(type))
        }

        private func makePostQuery(_ type: [String]) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(type, forKey: "type", explode: false)
            return encoder.items
        }
    }
}