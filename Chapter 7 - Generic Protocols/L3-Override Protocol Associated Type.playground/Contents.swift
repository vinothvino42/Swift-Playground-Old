/*:
 # Override Protocol Associated Type
 > Problem : How to override typed-defined protocol ?
 */

import UIKit

//: Design Protocol
protocol FamilyProtocol {
    associatedtype FamilyType
    var familyMembers: [FamilyType] { get set }
}

//: Design Struct
struct NumberFamily: FamilyProtocol {
    var familyMembers: [Int] = [1, 2, 3]
}

let numberFam = NumberFamily()  //FamilyType = Int

//: Override Associated Type Directly
struct NormalFamily: FamilyProtocol {
    typealias FamilyType = String
    var familyMembers = ["Vino", "vinoth"]  // FamilyType = String
}

//:  How to apply generic protocol with generics
struct VinoFamily<T>:  FamilyProtocol {
    var familyMembers: [T] = [] //FamilyType = T
}

let family = VinoFamily(familyMembers: ["Vino", "Vinoth"])
family.familyMembers
// 1. T becomes String ["Vino", "Vinoth"]
// 2. FamilyType now becomes String based on T
