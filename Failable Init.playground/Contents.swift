/*:
 # Failable Init
 ## Problem : Can initialization Fail ?
 */
//: ### Error Handling (Review) (Recommended way)

enum NameError: Error {
    case noName
}

struct UdemyCourse {
    let courseName: String
    
    init(name: String) throws {
        if name.isEmpty {
            throw NameError.noName
        }
        self.courseName = name
    }
}

do {
    let myCourse = try UdemyCourse(name: "iOS")
} catch NameError.noName {
    print("Vino, please enter the course name")
}

//: ## Design Failable Init

class Blog {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
}

let vino = Blog(name: "Vino")
let vinoth = vino!

//:> Prefer Error Handling approach since more explicit and no need to unwrap

