/*:
 # Convenience Init
 > Convenience Init - Initialize Quickly
 */
import UIKit

class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "Vino the developer")
    }
}
let vino = Human()
vino.name
let vinoNew = Human(name: "Vinoth")
vinoNew.name

//: Practical Usage
let swiftColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)

extension UIColor {

    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
let favColor = UIColor(r: 80, g: 85, b: 255)

