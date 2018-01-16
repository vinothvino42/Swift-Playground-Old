/*:
 # Type Casting
 ## Upcasting -> as
 */
import UIKit
// Design Class
class Mobile {
    
    func color() {
        print("Black")
    }
}

// Design Subclass

class IOS: Mobile {
    
    func iOS11() {
        print("iOS 11 is the latest version of iOS")
    }
}

let device = IOS()
device.color()
device.iOS11()
//: Type Casting

let newDevice = device as Mobile
newDevice.color() //Upcasting
//: > as -> Upcasting
/*:
 ## Downcasting -> as?(safe way) or as!(force way)
 */
class Android: Mobile {
    func oreo() {
        print("Oreo is the version name of Android")
    }
}

let name = "Vinoth" as Any
let age = 21 as Any

var anyArray = [name, age]
//: ## Force/Explicit Downcasting

let newValue = anyArray[1] as! Int
//let anotherValue = anyArray[1] as! String //It provides error because age is Integer

//: ## Implicit Downcasting
let newValueOne = anyArray[0] as? Int
let newValueTwo = anyArray[1] as? Int

//: Grouping
let androidObjOne = Android()
let iosObjOne = IOS()
let androidObjTwo = Android()
let iosObjTwo = IOS()

let mobiles: [Mobile] = [androidObjOne, iosObjOne, androidObjTwo, iosObjTwo]

for mobile in mobiles {
    if let android = mobile as? Android {
        android.oreo()
    }
    
    if let ios = mobile as? IOS {
        ios.iOS11()
    }
}

//: Practical Type Casting Usage

let loginButton = UIButton()
let loginLabel = UILabel()
let loginView = UIView()

let UIComponents = [loginButton, loginLabel, loginView]

for component in UIComponents {
    
    if let button = component as? UIButton {
        //Change button label
        //Change button color
    }
    
    if let label = component as? UILabel {
        //Change label
        //Change text color
        
    }
    
    if let view = component as? UIView {
        //Change bg color
    }
}
















