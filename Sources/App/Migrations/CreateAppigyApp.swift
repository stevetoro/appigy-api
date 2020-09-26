import Fluent

struct CreateAppigyApp: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("appigyapps")
            .id()
            .field("name", .string, .required)
            .field("brew_formula", .string, .required)
            .field("description", .string, .required)
            .field("category", .string, .required)
            .field("image_name", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("appigyapps").delete()
    }
}
