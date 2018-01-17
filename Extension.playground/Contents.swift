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

vinoth["iOS 11"]

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











