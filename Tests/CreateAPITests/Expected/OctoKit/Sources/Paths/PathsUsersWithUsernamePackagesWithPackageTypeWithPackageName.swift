// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Packages.WithPackageType {
    public func packageName(_ packageName: String) -> WithPackageName {
        WithPackageName(path: "\(path)/\(packageName)")
    }

    public struct WithPackageName {
        /// Path: `/users/{username}/packages/{package_type}/{package_name}`
        public let path: String

        /// Get a package for a user
        ///
        /// Gets a specific package metadata for a public package owned by a user.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` scope.
        /// If `package_type` is not `container`, your token must also include the `repo` scope.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#get-a-package-for-a-user)
        public var get: Request<OctoKit.Package> {
            Request(method: "GET", url: path)
        }

        /// Delete a package for a user
        ///
        /// Deletes an entire package for a user. You cannot delete a public package if any version of the package has more than 5,000 downloads. In this scenario, contact GitHub support for further assistance.
        /// 
        /// To use this endpoint, you must authenticate using an access token with the `packages:read` and `packages:delete` scopes. In addition:
        /// - If `package_type` is not `container`, your token must also include the `repo` scope.
        /// - If `package_type` is `container`, you must also have admin permissions to the container you want to delete.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/packages#delete-a-package-for-a-user)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}