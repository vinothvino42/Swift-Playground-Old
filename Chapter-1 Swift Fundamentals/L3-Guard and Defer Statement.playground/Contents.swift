import UIKit


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
    defer { print("Deferred \(i)") }
    print("First \(i)")
}






