
/*:
 # Automatic Reference Counting
 > Allocate and Deallocate objects with ARC
 
 ## What is memory ?
 ### 1. RAM
 ### 2. Disk
*/

class Passport {
    weak var human: Human?
    var citizenship: String
    
    init(citizenship: String) {
        self.citizenship = citizenship
        print("\(citizenship) passport generated")
    }
    
    deinit {
        print("I, paper, am gone")
    }
}

//: Design Human
class Human {
    var passport: Passport?
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) generated")
    }
    
    deinit {
        print("I, \(name), gone")
    }
}

// Passport(citizenship: "Republic of India")
// var message = Passport(citizenship: "Republic of India")
//: ### Introducing Automatic Reference Counting
//: Create Instances
//var vino: Human? = Human(name: "Vinoth")
//var passport: Passport? = Passport(citizenship: "Republic of India")

//: Deallocate
//vino = nil  //Removing the relationship
//passport = nil

//: > The Only Rule: If the reference count is zero/no relationship, the object gets purged out of the memory

var vinoth: Human? = Human(name: "Vinoth")
var myPassport: Passport? = Passport(citizenship: "Republic of India")

vinoth?.passport = myPassport
myPassport?.human = vinoth

// Option 1
//vinoth = nil
//myPassport = nil

// Option 2
myPassport = nil
vinoth = nil
