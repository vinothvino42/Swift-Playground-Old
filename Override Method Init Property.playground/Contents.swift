/*:
 # Override Method, Init, Property
 */

class Vehicle {
    
    var description: String {
        return "Hello, I'm moving at 30km/hr"
    }
    
    func warning() {
        print("Be careful, I'm going pretty fast")
    }
}

//: ### Override Method and Property
class ToyCar: Vehicle {
    override var description: String {
        return "\(super.description). Hey, but I'm small though"
    }
    
    override func warning() {
        print("Hello, don't mind me")
        super.warning()
    }
}
print(ToyCar().description)
print(ToyCar().warning())

//: super.init
class Human {
    var origin: String
    
    init(enterOrigin: String) {
        origin = enterOrigin
    }
}

Human(enterOrigin: "Republic of India")

class Indian: Human {
    var city: String
    
    init(enterCity: String) {
        self.city = enterCity
        super.init(enterOrigin: "Republic of Indian")
    }
    init(enterCity: String, origin: String) {
        self.city = enterCity
        super.init(enterOrigin: origin)
    }
}

let vino = Indian(enterCity: "Tuticorin")
vino.city
vino.origin


let vinoth = Indian(enterCity: "New York", origin: "US")

//: Override Init

class Tesla {
    var numberOfWheels: Int
    
    init(enterWheelNumber: Int) {
        numberOfWheels = enterWheelNumber
    }
}

class Models: Tesla {
    
    override init(enterWheelNumber: Int) {
        super.init(enterWheelNumber: enterWheelNumber)
        print("This is a beautiful car")
    }
}
let futureCar = Models(enterWheelNumber: 50)
print(futureCar.numberOfWheels)





























