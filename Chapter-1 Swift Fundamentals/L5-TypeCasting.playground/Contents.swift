/*:
 # Type Casting
 ## Upcasting -> as
 ## Downcasting -> as? and as!
 */

import UIKit

// Example from UIKit
let label = UILabel() as UIView

// Design Class
class Human {
    func introduce() {
        print("Hi, I'm a human")
    }
}

// Design Subclass
class Korean: Human {
    func singGangnamStyle() {
        print("Oppa Gangnam Style")
    }
}

let vino = Korean()
device.introduce()
device.singGangnamStyle()

//: Type Casting

let newVino = vino as Human
newVino.introduce() //Upcasting
//: > as -> Upcasting
/*:
*/
 
 // Upcasting with Normal / Common Types
var name = "Vino" as Any
var number = 20 as Any

var anyArray = [name, number]
 
/*
 ## Downcasting -> as?(safe way) or as!(force way)
 */

class Japanese: Human {
    func doNinja() {
        print("Shhhh.....")
    }
}

//: ## Force/Explicit Downcasting

let newValue = anyArray[1] as! Int
//let anotherValue = anyArray[1] as! String //It provides error because age is Integer

//: ## Implicit Downcasting
let newValueOne = anyArray[0] as? Int
let newValueTwo = anyArray[1] as? Int

//: Grouping
let shion = Japaneese()
let lee = Korean()
let kenji = Japaneese()
let park = Korean()

//let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]

let humans: [Human] = [shion, lee, kenji, park]

for human in humans {
    if let korean = human as? Korean {
        korean.singGangnamStyle()
    }
    
    if let japanese = human as? Japanese {
        japanese.doNinja()
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

//: Type casting in UIKit
let storyboard = UIStoryboard(name: "Main", bundle: nil)
let vc = storyboard.instantiateViewController(identifier: "VC")















