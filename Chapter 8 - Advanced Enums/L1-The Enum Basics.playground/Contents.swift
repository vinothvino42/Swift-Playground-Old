/*:
 # The Enum Basics
 */

/*:
 ## There are three types of enumeration:
 ### 1. Basic Enumerations
 ### 2. Enumerations that have Raw Values
 ### 3. Enumerations that have Associated Values
 */

import UIKit

//: Basic Enumerations
enum Compass {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth    // Init

switch earth {
case .earth:
    print("Mostly safe")
default:
    print("Not a safe place for me")
}


//: Raw Value : String
/*:
 ## Swift supports the following type for the value of an enum:
 1. Integer
 2. Float
 3. String
 4. Bool
 */

enum Food: String {
    case pizza
    case banana
    case chicken
    case bigMac
}

let stringValueFromPizza = Food.pizza.rawValue

//: Raw Value : Int
enum Days: Int {
    case mon, tue, wed, thu, fri = 10, sat, sun
}
// mon = 0, tue = 1, wed = 2, thu = 3, fri = 10, sat = 11, sun = 12

Days.mon.rawValue

// Initialization from Raw Value
let possibleDay = Days(rawValue: 10)
print(possibleDay)

if let someDay = Days(rawValue: 3) {
    switch someDay {
    case .sat, .sun:
        print("Weekends!")
    default:
        print("Weekdays!")
    }
} else {
    print("No such day exists")
}

/*:
 ### Associated Value
 */

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var myqrCode = Barcode.qrCode("XYZ")
var upcCode = Barcode.upc(4, 2, 5, 4)

// Validation
if case let Barcode.qrCode(value) = myqrCode {
    print("This is a qrcode")
    print(value)
}

if case let Barcode.upc(numberSystem, manufacturer, product, check) = upcCode {
    print("NumberSystem : ",numberSystem)
    print("Manufacturer : ",manufacturer)
    print("Product : ",product)
    print("Check : ",check)
}

let code = myqrCode

switch code {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR Code : \(productCode)")
}

switch code {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR Code : \(productCode)")
}
