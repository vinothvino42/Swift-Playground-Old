/*:
 # Intro to Closures Part 2
 > Problem : Can you pass/return a function/functions to a function ?
 
 > Function = Global Closure
 */
func hello() -> String {
    return "Hello"
}
hello // () -> String

//: Closure
var addWithClosures = { (number1: Int, number2: Int) in
    return number1 + number2
}

var returnString: () -> String = { () in
    "Hello"
}

//: ## Return Closure
//: Return Closure Indirectly
func returnClosureIndirectly() -> ((Int, Int) -> Int) {
    return addWithClosures
}

let returnedClosure = returnClosureIndirectly()
returnedClosure(10, 20)
// or
returnClosureIndirectly()(20,30)

// Return Closure Directly
func returnClosureDirectly() -> ((Int, Int) -> Int) {
    return { (number1, number2) in number1 + number2}
}
let closure = returnClosureDirectly()
closure(2, 2)
// or
returnClosureDirectly()(2,5)

func returnClosureDirectlyTwo() -> (Int, Int) -> Int {
    return { $0 + $1 }
}
let closureTwo = returnClosureDirectlyTwo()
closureTwo(5, 3)
// or
returnClosureDirectlyTwo()(5,6)

//: ## Pass Closure
func insertClosureBlock(closureBlock: () -> String) -> String {
    //print(closureBlock())
    return closureBlock()
}

//: ### Pass Closure Indirectly
let returnValue = insertClosureBlock(closureBlock: returnString) //Passing Closure
insertClosureBlock(closureBlock: hello) //Passing Function

//: ### Pass Closure Directly
insertClosureBlock(closureBlock: { () in return "Hello" })
insertClosureBlock(closureBlock: { return "Hello" })
insertClosureBlock(closureBlock: { "Hello" })

let example = Array(1...100).filter { $0 % 2 == 0 }
print(example)

