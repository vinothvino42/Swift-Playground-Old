/*:
 # Generic Protocol
 ## Associated Type
 > Problem : How to create generic protocols
 > #1 Rule : Type must be defined before compiled
 */

import Foundation

struct GenericStruct<T> {
    var property: T?
}


let explicitly = GenericStruct<Bool>()
// T is Bool

let implicitly = GenericStruct(property: "Vinoth")
// T is String

//: Design Normal Protocol
protocol NormalProtocol {
    var property: String { get set }
}

//: Design Normal Class
class NormalClass: NormalProtocol {
    var property: String = "Vinoth"
}

//: Introducing Generic Protocol
protocol GenericProtocol {
    associatedtype myType
    var anyProperty: myType { get set }
}

//: Define Associated Type
struct SomeStruct: GenericProtocol {
    var anyProperty = 1996  //myType = Int
}

struct NewStruct: GenericProtocol {
    var anyProperty = "Vinoth"  //myType = String
}

//: Define Associated Type with Typealias
struct ExplicitStruct: GenericProtocol {
    typealias myType = Bool
    var anyProperty = true
}
