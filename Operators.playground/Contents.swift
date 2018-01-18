/*:
 # Operators
 */
//: Unary Operator
!true
!false

//: Binary Operator
1 + 2
4 == 4
1 / 4
5 % 2

//: ### Ternary Operator
//: Typical Else If
let iCanDrink = false

if iCanDrink {
    print("You may enter")
} else {
    print("No")
}

//: Ternary Operator
iCanDrink ? print("You may enter") : print("No")

//: Add Odd/Even Numbers
var evenNumbers: [Int] = []
var oddNumbers: [Int] = []

for number in 1...50 {
    (number % 2 == 0) ? evenNumbers.append(number) : oddNumbers.append(number)
}

//: Unwrapping Optionals
var age: Int? = nil
var defaultAge: Int = 20
var finalAge = Int() // 0

if age != nil {
    finalAge = age!
} else {
    finalAge = defaultAge
}

//: ### Nil Coalescing Operator
finalAge = age ?? defaultAge





























