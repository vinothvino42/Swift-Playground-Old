/*:
 # Protocol Extension and Type Constraints
 > Problem : Limit the scope of Protocol Extension with where and Self
 */

import Foundation

//: Generic Function
class Lol {}
func addLolClassOnly<T: Lol>(array: [T]) { }
addLolClassOnly(array: [Lol()])

//: Design Protocol
protocol GenericProtocol {
    associatedtype MyType
}

class SomeClass: GenericProtocol {
    typealias MyType = String
}

struct SomeStruct: GenericProtocol {
    typealias MyType = Int
}

extension GenericProtocol where MyType == String {
    static func introduce() {
        print("Hey, I'm Vinoth")
    }
}

SomeClass.introduce()
// SomeStruct.introduce() // Error

extension GenericProtocol where Self == SomeStruct {
    static func saySomething() {
        print("Im some struct")
    }
}

SomeStruct.saySomething()
// SomeClass.saySomething() // Error


//: Design Pre-Defined Associated Type
// Don't do this
protocol FamilyProtocol {
    associatedtype familyType = Int
    var familyMembers: [familyType] { get set }
}

struct NumberFamily: FamilyProtocol {
    var familyMembers: [Int] = [1, 2, 3]
}

struct StringFamily: FamilyProtocol {
    var familyMembers: [String] = ["vinoth", "vino"]    // familyType == String
}
