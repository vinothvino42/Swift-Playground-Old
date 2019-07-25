/*:
 # Trailing Closures
 > A closure is too long to pass through a function
 */
//: Design Function
func trailingClosure(number: Int, closure: () -> Void) {
    print("You've entered \(number)")
    closure()
}

//: Design Closure Block
func helloFunc() -> Void {
    print("Hello function")
}

let helloClosure = {
    print("Hello closure")
}

// Pass Closure Indirectly
trailingClosure(number: 10, closure: helloFunc)
trailingClosure(number: 20, closure: helloClosure)

// Pass Closure Directly
trailingClosure(number: 30, closure: { print("Hello Func") })
trailingClosure(number: 40) { print("Hello") }

/*:
## When to use trailing closure
> A single closure block at the end
*/
//: ### Another Example
func trailingClosure(number: Int, closure: (Int) -> Int) {
    let newNumber = closure(number)
    print(newNumber)
}
trailingClosure(number: 50, closure: { number1 in number1 * number1 })
trailingClosure(number: 60) { number in number * number}
trailingClosure(number: 70) { $0 * $0 }
