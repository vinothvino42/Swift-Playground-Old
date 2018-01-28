/*:
 # Type Property and Method
 > I'm confused by `Static, Final, Class`. What are those ?
 */
//: ## Static
struct SomeStructure {
    static var storedProperty = "Vinoth Vino"
    static var computedProperty: Int {
        get {
            return 120
        }
        set {
            print("You've set to \(newValue)")
        }
    }
    static func hello() {
        print("Hello")
    }
}
SomeStructure.storedProperty
SomeStructure.computedProperty
SomeStructure.hello()

//: ## Class: Class and Static
class GrandParent {
    static var numberOfYearsInMarriage = 30
    static func introduce() {
        print("We've been married for \(numberOfYearsInMarriage)")
    }
    
    class func introducing() {
        print("We've been married for \(numberOfYearsInMarriage)")
    }
    
    final func cantOverride() {
        print("You can't change me")
    }
}

GrandParent.introduce()
GrandParent.introducing()
GrandParent().cantOverride()
/*:
> Static can't be overidden but class property and methods can be override
 
> Final -> You can't override
 */
class Parent: GrandParent {
    override class func introducing() {
        print("I'm married for 5 years")
    }
}

//: Application (Recommended Way)
struct BluetoothID {
    struct iPhone {
        static let iPhone4 = "234-2342-2345-2343"
        static let iPhone5 = "2356-2336-4565-7775"
        static let iPhone6 = "8456-4545-6666-2346"
        static let iPhone7 = "2358-3534-6663-3434"
    }
    struct Android {
        static let ics = "234234"
        static let jellybean = "234234"
        static let kitkat = "323534"
        static let lollipop = "234324"
        static let marshmallow = "23423"
    }
}

BluetoothID.iPhone.iPhone4
BluetoothID.Android.jellybean

//: Alternative (Not Recommended)
enum AirDropID: String {
    case iPhone4 = "2343-234234-234"
    case iPhone5 = "345-345-64-343"
    case iPhone6 = "234-345-346-223"
    case iPhone7 = "2345-466-6453"
    case iPhone8 = "2347-464-4643-34"
}

AirDropID.iPhone7.rawValue
