
/*:
 # Intermediate to Advanced Swift Concepts
 ## 1. Optionals
 ### Implict and Explicit Type
 */
let name: String = "Vinoth"     //Explicit
let myName = "Vinoth Vino"      //Implicit
let age: Int = 14               //Explicit
let myAge = 24                  //Implicit

//Optional type allows storing nil
let newName: String? = nil
let yourAge: Int? = 24
let yourName: String? = "Vinoth Vino"
//print(newName!)  //Found nil while unwrapping exception
print(yourName!)
/*:
 ## Unwrapping Optionals
 ### Force Unwrapping
*/
let unwrappedYourAge = yourAge!
print(unwrappedYourAge)
let unwrappedYourName = yourName
print(unwrappedYourName!)

/*:
 ### Optional Binding
 */
let imageFromTwitter: String? = "Vinoth's image"

if let image = imageFromTwitter {
    print(image)
} else {
    print("No image")
}

/*:
 ## 2. Optional Chaining
 */
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
    print("No name")
}

/*:
 ## 3. Guard Statement
 */

let iCanDrink = false

func checkDrinkingAges() {
    guard iCanDrink else {
        print("You can not drink")
        return
    }
    
    print("Enjoy")
}

checkDrinkingAges()

var publicName: String? = "Vinoth Vino"
var publicPhoto: String? = "Vino"
var publicAge: Int? = 20

//: Unwrapping with Guard Statement
func unwrapOneByOneWithGuard() {
    guard let name = publicName else {
        print("No name")
        return
    }
    guard let photo = publicPhoto else {
        print("No photos")
        return
    }
    guard let age = publicAge else {
        print("No age")
        return
    }
    
    print(name)
    print(photo)
    print(age)
}


//: Unwrapping Multiple Optionals with Guard statement
func unwrapMultipleOptionalsWithGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        print("Something is missing")
        return
    }
    
    print("You name is \(name) and your display pic \(photo). You are \(age) years old")
}

/*:
 ## 4. Defer Statement
 */
func simpleDefer() {
    
    defer {
        print("Print Later")
    }
    
    print("Print First")
}
simpleDefer()

for i in 1...3 {
    defer {
        print("Deferred \(i)")
        print("First \(i)")
    }
}





