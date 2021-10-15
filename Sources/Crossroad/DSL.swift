import Foundation

@resultBuilder
public struct RouteBuilder<UserInfo> {
    public static func buildBlock(_ components: Route<UserInfo>...) -> [Route<UserInfo>] {
        components
    }
}

extension Router {
    public typealias Route = Crossroad.Route<UserInfo>

    public convenience init(accepts linkSources: Set<LinkSource>, @RouteBuilder<UserInfo> routeBuilder: () -> [Route]) {
        let routes = routeBuilder()
        self.init(linkSources: linkSources, routes: routes)
    }
}

extension Route {
    public init(_ path: Path, accepts acceptPolicy: AcceptPolicy = .any, handler: @escaping Handler) {
        self.init(path: path,
                  acceptPolicy: acceptPolicy,
                  handler: handler)
    }
}
