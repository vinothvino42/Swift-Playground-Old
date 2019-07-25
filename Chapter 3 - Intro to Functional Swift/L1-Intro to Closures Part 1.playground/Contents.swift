/*:
 # Intro to Closures - Part 1
 > A Closure is a function without name and the func keyword. Quick and easy to carry around as a variable/constant or just pass as a parameter
 */
//: Function to add two numbers
func addTwoNumbers(number1: Int, number2: Int) -> Int{
    return number1 + number2
}
addTwoNumbers(number1: 10, number2: 30)
var addFunction = addTwoNumbers
addFunction(2, 2)

//: Closure to add two numbers
// Method 1
var addClosuresOne: (Int, Int) -> Int = { (number1: Int, number2: Int) in
    return number1 + number2
}

addClosuresOne(2, 4)

// Method 2
var addClosuresTwo = { (number1: Int, number2: Int) in
    return number1 + number2
}
addClosuresTwo(1, 2)

// Method 3
var addClosuresThree = { (number1: Int, number2: Int) in
    number1 + number2
}
addClosuresThree(4, 4)

// Method 4
var addClosuresFour: (Int, Int) -> Int = { $0 + $1 }
addClosuresFour(6, 3)

// Method 5
var addClosuresFive: (Int, Int) -> Int = {
    return $0 + $1
}
addClosuresFive(6, 2)


//: Example with () -> String
func callStringWithFunction() -> String {
    return "Hello, I'm a function"
}
callStringWithFunction()

let callStringWithClosure: () -> String = { () in
    print("Hello")
    return "Hello, I'm a closure"
}
callStringWithClosure()

// Without Return
let callStringWithClosureTwo: () -> String = { () in
    "Hello, I'm a closure"
}
callStringWithClosureTwo()

// Shorter Version
let callStringWithClosureThree: () -> String = { "Hello, I'm a closure" }
let callStringWithClosureFour = { "Hello, I'm a closure" }






