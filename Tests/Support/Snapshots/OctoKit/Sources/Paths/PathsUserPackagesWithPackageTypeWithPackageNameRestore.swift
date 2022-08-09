// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Packages.WithPackageType.WithPackageName {
    public var restore: Restore {
        Restore(path: path + "/restore")
    }

    public struct Restore {
        /// Path: `/user/packages/{package_type}/{package_name}/restore`
        public let path: String

        /// Restore a package for the authenticated user
        ///
        /// Restores a package owned by the authenticated user.
        /// 
        /// You can restore a deleted package under the following conditions:
        ///   - The package was deleted within the last 30 days.
        ///   - The same package namespace and version is still available and not reused for a new package. If the same package namespace is not available, you will not be able to restore your package. In this scenario, to restore the deleted package, you must delete the new package that uses the deleted package's namespace first.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:write` scopes. If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#restore-a-package-for-the-authenticated-user)
        public func post(token: String? = nil) -> Request<Void> {
            Request(method: "POST", url: path, query: makePostQuery(token), id: "packages/restore-package-for-authenticated-user")
        }

        private func makePostQuery(_ token: String?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(token, forKey: "token")
            return encoder.items
        }
    }
}