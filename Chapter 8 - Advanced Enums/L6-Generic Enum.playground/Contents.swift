/*:
 # Generic Enum
 > Problem : A little more complex associated value
 */

import UIKit

//: Introducing Generic Enum

enum Information<T, U> {
    case name(T)
    case website(T)
    case age(U)
}

// Information.name("Vino")
// T is "String", but U ?

Information<String, Int>.age(20)

//: Optionals with Enum
let quickOptionals: String? = "Vino"
let explicitOptionals = Optional("Vino")
explicitOptionals!

let str = "4234"
let newStr = String("25235")

//: Custom Optionals

enum MyOptional<T> {
    case none   // nil
    case some(T)
    
    init(_ anyValue: T) {
        self = .some(anyValue)
    }
}

//MyOptional("Vinoth")

//if let value = MyOptional("Vinoth") {
//    print(value)
//}
