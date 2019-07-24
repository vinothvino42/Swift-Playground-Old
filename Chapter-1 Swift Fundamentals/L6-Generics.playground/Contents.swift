/*:
 # Generics
 ## Introduction to Generics
 */
let highSchoolGPA = [2.8, 3.2, 3.5, 6.6, 3.6]
let favPeople = ["Elon Musk", "Steve Jobs", "Sundar Pichai"]
let favNumbers = [4, 2]

//: Worst Way of Doing
highSchoolGPA[0]
highSchoolGPA[1]
highSchoolGPA[2]

//: Typical Solution
func printDoubleElement(array: [Double]) {
    for GPA in array {
        print(GPA)
    }
}

func printStringElement(array: [String]) {
    for person in array {
        print(person)
    }
}

func printNumberElement(array: [Int]) {
    for number in array {
        print(number)
    }
}

printStringElement(array: favPeople)

//: Introducing Generics
func genericFunction<anything>(value: anything) {
    print(value)
}
genericFunction(value: 42)
genericFunction(value: "Vino")

func genericFunctions<T>(value: T){
    print(value)
}

func printElement<T>(array: [T]) {
    for element in array {
        print(element)
    }
}

printElement(array: highSchoolGPA) //Double
printElement(array: favPeople) //String
printElement(array: favNumbers) //Int

//: Generics Struct
//Non generic code
struct Family {
    var members: [String] = []
    
    mutating func push(member: String) {
        members.append(member)
    }
}

var myFam = Family()
myFam.push(member: "Vino")
myFam.members

// Generic code
struct GenericFamily<T> {
    var members: [T] = []
    
    mutating func push(member: T) {
        members.append(member)
    }
}

//: Generic Initialization
// T Implicitly Defined
let myFamily = GenericFamily(members: [3,5,2,4,7])

// T Explicitly Defined
var genericFam = GenericFamily<Int>()
genericFam.push(member: 42)

//: Generics Extension
extension GenericFamily {
    var firstElement: T? {
        if members.isEmpty {
            return nil
        } else {
            return members[0]
        }
    }
}
genericFam.firstElement

//: Type Constraint

class Mac {}
class Linux: Mac {}

let example = Mac()

func addMacClassOnly<T: Mac>(array: [T]) {}
addMacClassOnly(array: [example, example])
addMacClassOnly(array: [Linux(), Linux()])













































