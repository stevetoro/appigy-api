import Fluent
import Vapor

struct AppigyAppController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let apps = routes.grouped("apps")
        apps.get(use: index)
    }

    func index(req: Request) throws -> EventLoopFuture<[AppigyApp]> {
        return AppigyApp.query(on: req.db).all()
    }
}
