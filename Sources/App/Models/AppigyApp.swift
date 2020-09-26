import Fluent
import Vapor


final class AppigyApp: Model, Content {
    static let schema = "appigyapps"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String
    
    @Field(key: "brew_formula")
    var brew_formula: String
    
    @Field(key: "description")
    var description: String
    
    @Field(key: "category")
    var category: String
    
    @Field(key: "image_name")
    var image_name: String

    init() { }

    init(id: UUID? = nil, name: String, brew_formula: String, description: String, category: String, image_name: String) {
        self.id = id
        self.name = name
        self.brew_formula = brew_formula
        self.description = description
        self.category = category
        self.image_name = image_name
    }
}
