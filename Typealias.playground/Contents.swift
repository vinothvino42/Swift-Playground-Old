/*:
 # Typealias
 */
typealias Name = String

func insertName(name: Name) {
    print(name)
}

//: Typealias for Custom Class

class Employee {}

typealias MyEmployees = [Employee]

func listEmployess(enterEmployees: MyEmployees) {
    
}

listEmployess(enterEmployees: [Employee(), Employee()])

//: Typealias for Tuple
typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
    print(grid.0)
    print(grid.1)
}

enterPoint(grid: (1, 4))

//: ### Type Definition
//: Array Type
let arrayOne: Array<String> = Array(["Vinoth" , "Vino"])
let arrayTwo: [String] = ["Vinoth" , "Vino"]  //

//: Dictionary Type
let dictOne: [String: Int] = ["age": 24, "newAge": 33]
let dictTwo: Dictionary<String, Int> = ["age": 34, "newAge": 63]

//Optional Type
var optionalOne: String?
var optionalTwo: Optional<String>









