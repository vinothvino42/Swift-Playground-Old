/*:
 # Protocol as Type
 > No more type casting
 */
let random: Any = [1, "String", ["123"]]
//: Design Protocol
protocol EastAsianable {
    var useChopstics: Bool { get }
    var origin: String { get }
}

extension EastAsianable {
    var useChopstics: Bool {
    return true
    }
}
//: Create Blueprint
struct Korean: EastAsianable {
    var origin: String = "Korea"
}

class Japanese: EastAsianable {
    var origin: String = "Japan"
}

struct Chinese: EastAsianable {
    var origin: String = "China"
}

let eastAsians: [EastAsianable] = [Korean(), Japanese(), Chinese()]

for eastAsian in eastAsians {
    print("I'm from \(eastAsian.origin)")
}

//: Practical Examples

// Combine UILabel, UIImageView, loop through to change colors, animation and so on.
// Use your imagination

//: Protocol met Generics
protocol Sleekable {
    var price: String { get }
}

struct Diamond: Sleekable {
    var price: String = "Very High"
}

struct Ruby: Sleekable {
    var price: String = "High"
}

class Glass: Sleekable {
    var price: String = "Dirt Cheap"
}

func stateThePrice<T: Sleekable>(enterGem: T) {
    print("I'm expensive. In fact, I'm \(enterGem.price)")
}

stateThePrice(enterGem: Ruby())
stateThePrice(enterGem: Diamond())
stateThePrice(enterGem: Glass())
