// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get

extension Paths.Items {
    public func itemID(_ itemID: Int) -> WithItemID {
        WithItemID(path: "\(path)/\(itemID)")
    }

    public struct WithItemID {
        /// Path: `/items/{itemId}`
        public let path: String

        /// Get item details from the database
        ///
        /// Obtain item details from item database
        public var get: Request<SimpleCartAPI.Item> {
            .get(path)
        }
    }
}

extension Paths.Orders {
    public func orderID(_ orderID: Int) -> WithOrderID {
        WithOrderID(path: "\(path)/\(orderID)")
    }

    public struct WithOrderID {
        /// Path: `/orders/{orderId}`
        public let path: String

        /// Get order details from database
        ///
        /// Obtain item details from the database
        public var get: Request<SimpleCartAPI.Order> {
            .get(path)
        }
    }
}

extension Paths {
    public static var orders: Orders {
        Orders(path: "/orders")
    }

    public struct Orders {
        /// Path: `/orders`
        public let path: String

        /// Get orders from the database
        ///
        /// Obtain order details from orders database
        public func get(list: Int? = nil) -> Request<[SimpleCartAPI.Order]> {
            .get(path, query: makeGetQuery(list))
        }

        private func makeGetQuery(_ list: Int?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("list", list?.asQueryValue)
            return query
        }

        /// Post order details to the database
        ///
        /// Post item order to orders database
        public func post(_ body: PostRequest? = nil) -> Request<SimpleCartAPI.Order> {
            .post(path, body: body)
        }

        public struct PostRequest: Encodable {
            /// Model containing item information
            public var item: SimpleCartAPI.Item?
            public var address: String

            public init(item: SimpleCartAPI.Item? = nil, address: String) {
                self.item = item
                self.address = address
            }
        }
    }
}

extension Paths {
    public static var items: Items {
        Items(path: "/items")
    }

    public struct Items {
        /// Path: `/items`
        public let path: String

        /// Get items from the database
        ///
        /// Pull a list of items from item database
        public func get(list: Int? = nil) -> Request<[[SimpleCartAPI.Item]]> {
            .get(path, query: makeGetQuery(list))
        }

        private func makeGetQuery(_ list: Int?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("list", list?.asQueryValue)
            return query
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
