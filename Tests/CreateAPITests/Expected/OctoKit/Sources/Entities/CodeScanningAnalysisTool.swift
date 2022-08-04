// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct CodeScanningAnalysisTool: Codable {
    /// The name of the tool used to generate the code scanning analysis.
    public var name: String?
    /// The version of the tool used to generate the code scanning analysis.
    public var version: String?
    /// The GUID of the tool used to generate the code scanning analysis, if provided in the uploaded SARIF data.
    public var guid: String?

    public init(name: String? = nil, version: String? = nil, guid: String? = nil) {
        self.name = name
        self.version = version
        self.guid = guid
    }
}