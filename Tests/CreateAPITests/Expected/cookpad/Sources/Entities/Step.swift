// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Step: Codable {
    /// The instructions for the step.
    ///
    /// Example: "Crush the garlic cloves and add all ingredients apart from the ribs into a pan"
    public var description: String
    /// An array of up to three image URLs associated with the step.
    ///
    /// Example: ["https://img-global.cpcdn.com/steps/0606534c251df2e5/m/photo.jpg"]
    public var imageURLs: [URL]

    public init(description: String, imageURLs: [URL]) {
        self.description = description
        self.imageURLs = imageURLs
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case imageURLs = "image_urls"
    }
}