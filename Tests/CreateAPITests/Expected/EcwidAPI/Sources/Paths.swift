// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var bulk: Bulk {
        Bulk(path: "/bulk")
    }

    public struct Bulk {
        /// Path: `/bulk`
        public let path: String
    }
}

extension Paths.Bulk {
    public var download: Download {
        Download(path: path + "/download")
    }

    public struct Download {
        /// Path: `/bulk/download`
        public let path: String

        /// Create a new bulk download job (asynchronous)
        public func post(_ body: Data) -> Request<Data> {
            .post(path, body: body)
        }
    }
}

extension Paths.Bulk {
    public var jobs: Jobs {
        Jobs(path: path + "/jobs")
    }

    public struct Jobs {
        /// Path: `/bulk/jobs`
        public let path: String

        /// Fetch all the bulk jobs for an instance
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var nextPage: String?
            public var pageSize: Int?
            public var fields: String?

            public init(`where`: String? = nil, nextPage: String? = nil, pageSize: Int? = nil, fields: String? = nil) {
                self.where = `where`
                self.nextPage = nextPage
                self.pageSize = pageSize
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }
    }
}

extension Paths.Bulk {
    public var query: Query {
        Query(path: path + "/query")
    }

    public struct Query {
        /// Path: `/bulk/query`
        public let path: String

        /// Create an asynchronous bulk query job.
        public func post(parameters: PostParameters? = nil, _ body: Data? = nil) -> Request<Data> {
            .post(path, query: parameters?.asQuery, body: body)
        }

        public struct PostParameters {
            public var q: String?
            public var lastRunDate: String?
            public var from: String?
            public var to: String?

            public init(q: String? = nil, lastRunDate: String? = nil, from: String? = nil, to: String? = nil) {
                self.q = q
                self.lastRunDate = lastRunDate
                self.from = from
                self.to = to
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(q, forKey: "q")
                encoder.encode(lastRunDate, forKey: "lastRunDate")
                encoder.encode(from, forKey: "from")
                encoder.encode(to, forKey: "to")
                return encoder.items
            }
        }
    }
}

extension Paths.Bulk {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/bulk/{id}`
        public let path: String
    }
}

extension Paths.Bulk.WithID {
    public var cancel: Cancel {
        Cancel(path: path + "/cancel")
    }

    public struct Cancel {
        /// Path: `/bulk/{id}/cancel`
        public let path: String

        /// Cancel an asynchronous bulk query job.
        public var put: Request<Data> {
            .put(path)
        }
    }
}

extension Paths.Bulk.WithID {
    public var errors: Errors {
        Errors(path: path + "/errors")
    }

    public struct Errors {
        /// Path: `/bulk/{id}/errors`
        public let path: String

        /// Retrieve the errors of a bulk job.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }
    }
}

extension Paths.Bulk.WithID {
    public var status: Status {
        Status(path: path + "/status")
    }

    public struct Status {
        /// Path: `/bulk/{id}/status`
        public let path: String

        /// Retrieve the status of a bulk job.
        public var get: Request<Data> {
            .get(path)
        }
    }
}

extension Paths.Bulk.WithID {
    public func objectName(_ objectName: String) -> WithObjectName {
        WithObjectName(path: "\(path)/\(objectName)")
    }

    public struct WithObjectName {
        /// Path: `/bulk/{id}/{objectName}`
        public let path: String

        /// Retrieve the results of an asynchronous bulk query.
        public var get: Request<String> {
            .get(path)
        }
    }
}

extension Paths.Bulk {
    public func objectName(_ objectName: String) -> WithObjectName {
        WithObjectName(path: "\(path)/\(objectName)")
    }

    public struct WithObjectName {
        /// Path: `/bulk/{objectName}`
        public let path: String

        /// Upload a file of objects to be bulk uploaded to the provider.
        public func post(_ body: Data? = nil) -> Request<Data> {
            .post(path, body: body)
        }
    }
}

extension Paths {
    public static var customers: Customers {
        Customers(path: "/customers")
    }

    public struct Customers {
        /// Path: `/customers`
        public let path: String

        /// Find customers in the eCommerce system, using the provided CEQL search expression. If no search expression is provided, all records will be retrieved
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(`where`: String? = nil, pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.where = `where`
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }

        /// Create a new customer in eCommerce system.With the exception of the 'id' field, the required fields indicated in the 'Customer' model are those required to create a new customer
        public func post(_ body: Data) -> Request<Data> {
            .post(path, body: body)
        }
    }
}

extension Paths.Customers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/customers/{id}`
        public let path: String

        /// Retrieve a customer associated with a given ID from the eCommerce system. Specifying a customer with an ID that does not exist will result in an error response
        public var get: Request<Data> {
            .get(path)
        }

        /// Update an customer associated with a given ID in the eCommerce system.The update API uses the PATCH HTTP verb, so only those fields provided in the customer object will be updated, and those fields not provided will be left alone. Updating a customer with a specified ID that does not exist will result in an error response
        public func patch(_ body: Data) -> Request<Data> {
            .patch(path, body: body)
        }

        /// Delete a customer associated with a given ID from your eCommerce system. Specifying a customer associated with a given ID that does not exist will result in an error message
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

extension Paths.Customers.WithID {
    public var orders: Orders {
        Orders(path: path + "/orders")
    }

    public struct Orders {
        /// Path: `/customers/{id}/orders`
        public let path: String

        /// Find orders in the customer associated with a given ID. If the customer does not exist, an error response will be returned. If no orders are found in the given customer then an empty array will be returned
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }
    }
}

extension Paths {
    public static var objects: Objects {
        Objects(path: "/objects")
    }

    public struct Objects {
        /// Path: `/objects`
        public let path: String

        /// Get a list of all the available objects.
        public var get: Request<Data> {
            .get(path)
        }
    }
}

extension Paths.Objects {
    public func objectName(_ objectName: String) -> WithObjectName {
        WithObjectName(path: "\(path)/\(objectName)")
    }

    public struct WithObjectName {
        /// Path: `/objects/{objectName}`
        public let path: String
    }
}

extension Paths.Objects.WithObjectName {
    public var docs: Docs {
        Docs(path: path + "/docs")
    }

    public struct Docs {
        /// Path: `/objects/{objectName}/docs`
        public let path: String

        /// Get swagger docs for an object.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var isDiscovery: Bool?
            public var resolveReferences: Bool?
            public var isBasic: Bool?
            public var version: String?

            public init(isDiscovery: Bool? = nil, resolveReferences: Bool? = nil, isBasic: Bool? = nil, version: String? = nil) {
                self.isDiscovery = isDiscovery
                self.resolveReferences = resolveReferences
                self.isBasic = isBasic
                self.version = version
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isDiscovery, forKey: "discovery")
                encoder.encode(resolveReferences, forKey: "resolveReferences")
                encoder.encode(isBasic, forKey: "basic")
                encoder.encode(version, forKey: "version")
                return encoder.items
            }
        }
    }
}

extension Paths.Objects.WithObjectName {
    public var metadata: Metadata {
        Metadata(path: path + "/metadata")
    }

    public struct Metadata {
        /// Path: `/objects/{objectName}/metadata`
        public let path: String

        /// Get a list of all the field for an object.
        public var get: Request<Data> {
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

        /// Find orders in the eCommerce system, using the provided CEQL search expression. If no search expression is provided, all records will be retrieved
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(`where`: String? = nil, pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.where = `where`
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }

        /// Create an order in the eCommerce system.With the exception of the 'id' field, the required fields indicated in the 'Order' model are those required to create a new order.The paymentStatus can only be AWAITING_PAYMENT or INCOMPLETE.The fulfillmentStatus can only be AWAITING_PROCESSING
        public func post(_ body: Data) -> Request<Data> {
            .post(path, body: body)
        }
    }
}

extension Paths.Orders {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/orders/{id}`
        public let path: String

        /// Retrieve an order associated with a given ID from the eCommerce system. Specifying an order with an ID that does not exist will result in an error response
        public var get: Request<Data> {
            .get(path)
        }

        /// Update an order associated with a given ID in the eCommerce system. The update API uses the PATCH HTTP verb, so only those fields provided in the order object will be updated, and those fields not provided will be left alone. Updating an order with a specified ID that does not exist will result in an error response</strong>
        public func patch(action: String? = nil, _ body: Data) -> Request<Data> {
            .patch(path, query: makePatchQuery(action), body: body)
        }

        private func makePatchQuery(_ action: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(action, forKey: "action")
            return encoder.items
        }

        /// Delete an order associated with a given ID from your eCommerce system. Specifying an order associated with a given ID that does not exist will result in an error message
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

extension Paths.Orders {
    public func orderID(_ orderID: String) -> WithOrderID {
        WithOrderID(path: "\(path)/\(orderID)")
    }

    public struct WithOrderID {
        /// Path: `/orders/{orderId}`
        public let path: String
    }
}

extension Paths.Orders.WithOrderID {
    public var payments: Payments {
        Payments(path: path + "/payments")
    }

    public struct Payments {
        /// Path: `/orders/{orderId}/payments`
        public let path: String

        /// Retrieve the payments in the eCommerce system for the specified order
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }
    }
}

extension Paths.Orders.WithOrderID {
    public var refunds: Refunds {
        Refunds(path: path + "/refunds")
    }

    public struct Refunds {
        /// Path: `/orders/{orderId}/refunds`
        public let path: String

        /// Retrieve the refunds in the eCommerce system for the specified order
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }
    }
}

extension Paths {
    public static var ping: Ping {
        Ping(path: "/ping")
    }

    public struct Ping {
        /// Path: `/ping`
        public let path: String

        /// Ping the Element to confirm that the Hub Element has a heartbeat.  If the Element does not have a heartbeat, an error message will be returned.
        public var get: Request<Data> {
            .get(path)
        }
    }
}

extension Paths {
    public static var products: Products {
        Products(path: "/products")
    }

    public struct Products {
        /// Path: `/products`
        public let path: String

        /// Find products in the eCommerce system, using the provided CEQL search expression. The search expression in CEQL is the WHERE clause in a typical SQL query, but without the WHERE keyword.  If no search expression is provided, all records will be retrieved
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(`where`: String? = nil, pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.where = `where`
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }

        /// Create a new product in eCommerce system.With the exception of the 'id' field, the required fields indicated in the 'Product' model are those required to create a new product
        public func post(_ body: Data) -> Request<Data> {
            .post(path, body: body)
        }
    }
}

extension Paths.Products {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/products/{id}`
        public let path: String

        /// Retrieve a product associated with a given ID from the eCommerce system. Specifying a product with an ID that does not exist will result in an error response
        public var get: Request<Data> {
            .get(path)
        }

        /// Update a product associated with a given ID in the eCommerce system. The update API uses the PATCH HTTP verb, so only those fields provided in the product object will be updated, and those fields not provided will be left alone. Updating a product with a specified ID that does not exist will result in an error response. <p><strong>Update supports the following fields: sku, quantity, trackQuantity, quantityDelta, warningLimit, name, price, weight, tangible, enabled, fixedShippingRateOnly, fixedShippingRate, description, wholesalePrices, compareAtPrice, productClassId</strong>
        public func patch(_ body: Data) -> Request<Data> {
            .patch(path, body: body)
        }

        /// Delete a product associated with a given ID from your eCommerce system. Specifying a product associated with a given ID that does not exist will result in an error message
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

extension Paths {
    public static func objectName(_ objectName: String) -> WithObjectName {
        WithObjectName(path: "/\(objectName)")
    }

    public struct WithObjectName {
        /// Path: `/{objectName}`
        public let path: String

        /// Search for {objectName}
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(`where`: String? = nil, pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.where = `where`
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }

        /// Create an {objectName}
        public func post(_ body: Data) -> Request<Void> {
            .post(path, body: body)
        }
    }
}

extension Paths.WithObjectName {
    public func objectID(_ objectID: String) -> WithObjectID {
        WithObjectID(path: "\(path)/\(objectID)")
    }

    public struct WithObjectID {
        /// Path: `/{objectName}/{objectId}`
        public let path: String

        /// Retrieve an {objectName}
        public var get: Request<EcwidAPI.Object> {
            .get(path)
        }

        /// Update an {objectName}
        public func put(_ body: Data) -> Request<Data> {
            .put(path, body: body)
        }

        /// Update an {objectName}
        public func patch(_ body: Data) -> Request<Data> {
            .patch(path, body: body)
        }

        /// Delete an {objectName}
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

extension Paths.WithObjectName.WithObjectID {
    public func childObjectName(_ childObjectName: String) -> WithChildObjectName {
        WithChildObjectName(path: "\(path)/\(childObjectName)")
    }

    public struct WithChildObjectName {
        /// Path: `/{objectName}/{objectId}/{childObjectName}`
        public let path: String

        /// Search for {childObjectName}
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery)
        }

        public struct GetParameters {
            public var `where`: String?
            public var pageSize: Int?
            public var nextPage: String?
            public var fields: String?

            public init(`where`: String? = nil, pageSize: Int? = nil, nextPage: String? = nil, fields: String? = nil) {
                self.where = `where`
                self.pageSize = pageSize
                self.nextPage = nextPage
                self.fields = fields
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(`where`, forKey: "where")
                encoder.encode(pageSize, forKey: "pageSize")
                encoder.encode(nextPage, forKey: "nextPage")
                encoder.encode(fields, forKey: "fields")
                return encoder.items
            }
        }

        /// Create an {objectName}
        public func post(_ body: Data) -> Request<Void> {
            .post(path, body: body)
        }
    }
}

extension Paths.WithObjectName.WithObjectID.WithChildObjectName {
    public func childObjectID(_ childObjectID: String) -> WithChildObjectID {
        WithChildObjectID(path: "\(path)/\(childObjectID)")
    }

    public struct WithChildObjectID {
        /// Path: `/{objectName}/{objectId}/{childObjectName}/{childObjectId}`
        public let path: String

        /// Retrieve an {childObjectName}
        public var get: Request<Data> {
            .get(path)
        }

        /// Update an {childObjectName}
        public func put(_ body: Data) -> Request<Data> {
            .put(path, body: body)
        }

        /// Update an {childObjectName}
        public func patch(_ body: Data) -> Request<Data> {
            .patch(path, body: body)
        }

        /// Delete an {childObjectName}
        public var delete: Request<Void> {
            .delete(path)
        }
    }
}

public enum Paths {}