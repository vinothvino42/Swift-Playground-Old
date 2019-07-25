/*:
 # Extension
 */
//: Design Class
struct Vino {
    var name = "Vino"
    var designation = "iOS Developer"
    init() {}
}
Vino().name
let newVino = Vino()

extension Vino {
    var description: String {
        let myName = self.name
        let myDesignation = self.designation
        return "Hi, this is \(myName). I'm an \(myDesignation)"
    }
    
    init(enterDesignation: String) {
        self.designation = enterDesignation
        print("You've entered a designation")
    }
    
    subscript(myDesignation: String) -> String {
        return "This is your designation"
    }
}

let vino = Vino()
print(vino.description)

let vinoth = Vino(enterDesignation: "iOS App Developer")
print(vinoth.description)

vinoth["iOS"]

//: Extension to Swift types
let number = 10

extension Int {
    var squared: Int {
        return self * self
    }
}

Int(2).squared
4.squared

/*:
## Rules
### You may not have a stored property
*/

/*:
 ## Extensions in Swift
 # 1. Add computed instance properties and computed type properties
 # 2. Define instance methods and type methods
 # 3. Provide new initializers
 # 4. Define subscripts
 # 5. Define and use new nested type with enum/struct
 # 6. Make an existing type confirm to a protocol
*/








