// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Networks {
    public func owner(_ owner: String) -> WithOwner {
        WithOwner(path: "\(path)/\(owner)")
    }

    public struct WithOwner {
        /// Path: `/networks/{owner}`
        public let path: String
    }
}