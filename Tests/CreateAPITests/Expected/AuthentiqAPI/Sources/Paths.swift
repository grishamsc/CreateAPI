// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get

extension Paths {
    public static var key: Key {
        Key(path: "/key")
    }

    public struct Key {
        /// Path: `/key`
        public let path: String

        /// Register a new ID `JWT(sub, devtoken)`
        /// 
        /// v5: `JWT(sub, pk, devtoken, ...)`
        /// 
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public func post(_ body: String) -> Request<PostResponse> {
            .post(path, body: body)
        }

        public struct PostResponse: Decodable {
            /// Revoke key
            public var secret: String?
            /// Registered
            public var status: String?

            public init(secret: String? = nil, status: String? = nil) {
                self.secret = secret
                self.status = status
            }
        }

        /// Revoke an Authentiq ID using email & phone.
        /// 
        /// If called with `email` and `phone` only, a verification code
        /// will be sent by email. Do a second call adding `code` to
        /// complete the revocation.
        public func delete(parameters: DeleteParameters) -> Request<DeleteResponse> {
            .delete(path, query: parameters.asQuery())
        }

        public struct DeleteResponse: Decodable {
            /// Pending or done
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        public struct DeleteParameters {
            public var email: String
            public var phone: String
            public var code: String?

            public init(email: String, phone: String, code: String? = nil) {
                self.email = email
                self.phone = phone
                self.code = code
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("email", email.asQueryValue)
                query.addQueryItem("phone", phone.asQueryValue)
                query.addQueryItem("code", code?.asQueryValue)
                return query
            }
        }
    }
}

extension Paths.Key {
    public func pk(_ pk: String) -> WithPk {
        WithPk(path: "\(path)/\(pk)")
    }

    public struct WithPk {
        /// Path: `/key/{PK}`
        public let path: String

        /// Get public details of an Authentiq ID.
        public var get: Request<GetResponse> {
            .get(path)
        }

        /// JWT
        public struct GetResponse: Decodable {
            public var since: Date?
            public var status: String?
            /// Base64safe encoded public signing key
            public var sub: String?

            public init(since: Date? = nil, status: String? = nil, sub: String? = nil) {
                self.since = since
                self.status = status
                self.sub = sub
            }
        }

        /// Update properties of an Authentiq ID.
        /// (not operational in v4; use PUT for now)
        /// 
        /// v5: POST issuer-signed email & phone scopes in
        /// a self-signed JWT
        /// 
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public func post(_ body: String) -> Request<PostResponse> {
            .post(path, body: body)
        }

        public struct PostResponse: Decodable {
            /// Confirmed
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        /// Update Authentiq ID by replacing the object.
        /// 
        /// v4: `JWT(sub,email,phone)` to bind email/phone hash;
        /// 
        /// v5: POST issuer-signed email & phone scopes
        /// and PUT to update registration `JWT(sub, pk, devtoken, ...)`
        /// 
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public func put(_ body: String) -> Request<PutResponse> {
            .put(path, body: body)
        }

        public struct PutResponse: Decodable {
            /// Confirmed
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        /// Revoke an Identity (Key) with a revocation secret
        public func delete(secret: String) -> Request<DeleteResponse> {
            .delete(path, query: makeDeleteQuery(secret))
        }

        public struct DeleteResponse: Decodable {
            /// Done
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        private func makeDeleteQuery(_ secret: String) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("secret", secret.asQueryValue)
            return query
        }

        /// HEAD info on Authentiq ID
        public var head: Request<Void> {
            .head(path)
        }
    }
}

extension Paths {
    public static var login: Login {
        Login(path: "/login")
    }

    public struct Login {
        /// Path: `/login`
        public let path: String

        /// Push sign-in request
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public func post(callback: String, _ body: String) -> Request<PostResponse> {
            .post(path, query: makePostQuery(callback), body: body)
        }

        public struct PostResponse: Decodable {
            /// Sent
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        private func makePostQuery(_ callback: String) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("callback", callback.asQueryValue)
            return query
        }
    }
}

extension Paths {
    public static var scope: Scope {
        Scope(path: "/scope")
    }

    public struct Scope {
        /// Path: `/scope`
        public let path: String

        /// Scope verification request
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public func post(test: Int? = nil, _ body: String) -> Request<PostResponse> {
            .post(path, query: makePostQuery(test), body: body)
        }

        public struct PostResponse: Decodable {
            /// 20-character ID
            public var job: String?
            /// Waiting
            public var status: String?

            public init(job: String? = nil, status: String? = nil) {
                self.job = job
                self.status = status
            }
        }

        private func makePostQuery(_ test: Int?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("test", test?.asQueryValue)
            return query
        }
    }
}

extension Paths.Scope {
    public func job(_ job: String) -> WithJob {
        WithJob(path: "\(path)/\(job)")
    }

    public struct WithJob {
        /// Path: `/scope/{job}`
        public let path: String

        /// Get the status / current content of a verification job
        public var get: Request<GetResponse> {
            .get(path)
        }

        /// JWT
        public struct GetResponse: Decodable {
            public var exp: Int?
            public var field: String?
            /// Base64safe encoded public signing key
            public var sub: String?

            public init(exp: Int? = nil, field: String? = nil, sub: String? = nil) {
                self.exp = exp
                self.field = field
                self.sub = sub
            }
        }

        /// This is a scope confirmation
        public var post: Request<PostResponse> {
            .post(path)
        }

        public struct PostResponse: Decodable {
            /// Confirmed
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        /// Authority updates a JWT with its signature
        /// See: https://github.com/skion/authentiq/wiki/JWT-Examples
        public var put: Request<String> {
            .put(path)
        }

        /// Delete a verification job
        public var delete: Request<DeleteResponse> {
            .delete(path)
        }

        public struct DeleteResponse: Decodable {
            /// Done
            public var status: String?

            public init(status: String? = nil) {
                self.status = status
            }
        }

        /// HEAD to get the status of a verification job
        public var head: Request<Void> {
            .head(path)
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
