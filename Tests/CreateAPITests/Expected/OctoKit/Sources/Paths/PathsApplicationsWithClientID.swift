// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Applications {
    public func clientID(_ clientID: String) -> WithClientID {
        WithClientID(path: "\(path)/\(clientID)")
    }

    public struct WithClientID {
        /// Path: `/applications/{client_id}`
        public let path: String
    }
}