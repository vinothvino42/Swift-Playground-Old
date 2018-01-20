/*:
 # Computed Property
 > computed = calculated
 */
//: Gettable Property
//: > Create a variable that only can be read. It can't be modified
import Foundation

class Numbers {
    var readableNumber: Double {
        get {
            return 668
        }
    }
    
    var readableNumbers: Double {
        return 786
    }
}
Numbers().readableNumber
Numbers().readableNumbers

//: Settable Property
var radius: Double = 10

var diameter: Double {
    get {
        return radius * 2
    }
    
    set {
        radius = newValue / 2
    }
}
diameter = 30
radius

diameter = 50
radius
diameter

//: Finding Area
var side: Double = 100

var area: Double {
    get {
        return side * side
    }
    
    set {
        side = sqrt(newValue)
    }
}

area = 9
side

























