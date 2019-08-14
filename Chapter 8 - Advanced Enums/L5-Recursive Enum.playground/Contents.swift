/*:
 # Recursive Enum
 > Problem : Enum contains it's own enum type
 */

import UIKit

func recursiveFunc() {
    print("Hi")
    recursiveFunc()
}

//recursiveFunc()

indirect enum ArithmeticExpressions {
    case number(Int)
    case addition(ArithmeticExpressions, ArithmeticExpressions)
    case multiplication(ArithmeticExpressions, ArithmeticExpressions)
}

ArithmeticExpressions.number(4)
let additionEnum = ArithmeticExpressions.addition(.number(5), .number(10))
let multiplicationEnum = ArithmeticExpressions.multiplication(.number(2), .number(4))

let five = ArithmeticExpressions.number(5)
let four = ArithmeticExpressions.number(4)

func evaluate(_ expression: ArithmeticExpressions) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

evaluate(.number(4))
evaluate(additionEnum)
evaluate(multiplicationEnum)


//Alternative Normal Enum
enum Operation {
    case addition(Int, Int)
    case multiplication(Int, Int)
    
    var result: Int {
        switch self {
        case let .addition(number1, number2):
            return number1 + number2
        case let .multiplication(number1, number2):
            return number1 * number2
        }
    }
}

Operation.addition(2, 4).result

// Another alternative enum
struct StructOperation {
    func addTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
        return number1 + number2
    }
    
    func multiplication(_ number1: Int, _ number2: Int) -> Int {
        return number1 * number2
    }
}

StructOperation().addTwoNumbers(2, 5)

// Best alternative approach
struct MathOperation {
    static let addition: (Int, Int) -> Int = { $0 + $1 }
    static let multiplication: (Int, Int) -> Int = { $0 + $1 }
}

MathOperation.addition(4, 5)
