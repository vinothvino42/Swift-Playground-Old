import UIKit

/*:
 ## 2. Optional Chaining
 */
// Example from UIKit
let labelColor = UILabel().highlightedTextColor?.cgColor

//Human class
class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello I'm \(name)")
    }
}

// Apartment Class
class Apartment {
    var human: Human? = nil
}

// Initialize
let myApartment = Apartment()
myApartment.human = Human(name: "Vino")
myApartment.human?.sayHello()

//: Force Unwrapping
let nameVal =  myApartment.human!.name
print(nameVal)

//: Safe Unwrapping
let NYCApartment = Apartment()
NYCApartment.human?.name
if let residentName = NYCApartment.human?.name {
    print(residentName)
} else {
    print("No name available")
}

