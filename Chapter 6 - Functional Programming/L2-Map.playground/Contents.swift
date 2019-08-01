/*
 # Map
 > Problem: [1, 2, 3, 4, 5] to [1, 4, 9, 16, 25] in one line
 */

import Foundation

//: Imperative / Non functional
var squaredNumbers: [Double] = []
var numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
for number in numbers {
    squaredNumbers.append(number * number)
}
squaredNumbers

//: The Built in Map function
numbers.map { $0 * $0 } // [1, 4, 9, 16, 25]

//: Non-Generic Map (Numbers)
func myMap(numbers: [Double], operation: (Double) -> Double) -> [Double] {
    var result: [Double] = []
    for number in numbers {
        let transformedValue = operation(number)
        result.append(transformedValue)
    }
    return result
}

let result = myMap(numbers: [1, 2, 3, 4, 5], operation: { (number) -> Double in
    number * number
})

print(result)

myMap(numbers: [1, 2, 3, 4, 5], operation: { $0 * $0 })
myMap(numbers: [1, 2, 3, 4, 5]) { $0 * $0 }

func slightlyGenericMap<T>(_ items: [T], _ operation: (T) -> T) -> [T] {
    var result: [T] = []
    for item in items {
        result.append(operation(item))
    }
    return result
}

//: Ex 1 ) Lowercase each element
let uppercaseLetters = ["VINO", "VINOTH", "WENOTH"]

// Using function
print("Using Function")
func lowercase(enterString: String) -> String {
    return enterString.lowercased()
}

print(slightlyGenericMap(uppercaseLetters, lowercase))

// Using closure
print("Using Closure")
var lowercaseClosure: (String) -> String = { (item) in
    return item.lowercased()
}

// Pass closure indirectly
print(slightlyGenericMap(uppercaseLetters, lowercaseClosure))

// Pass closure directly
slightlyGenericMap(uppercaseLetters, { (name) -> String in
    name.lowercased()
})
slightlyGenericMap(uppercaseLetters, { $0.lowercased() })

//: ### Extremely Generic Map
func extremeGenericMap<T, U>(_ items: [T], operation: (T) -> U) -> [U] {
    var result = [U]()
    for item in items {
        result.append(operation(item))
    }
    return result
}

//: Ex 2) Manipulate Number to String

// Pass closure indirectly
func convertNumberToString(number: Int) -> String {
    return "You are number \(String(number))"
}

let myNumbers = [1, 2, 3, 4, 5]
print(extremeGenericMap(myNumbers, operation: convertNumberToString))

// Pass closure directly
let values = extremeGenericMap(myNumbers) { (number) in
    "You are number \(String(number))"
}
print(values)

// Short form
print(extremeGenericMap(myNumbers) { "You are number \(String($0))" })

//: The Purest Form
extension Array {
    func myMap<U>(_ operation: (Element) -> U) -> [U] {
        var result = [U]()
        for item in self {
            result.append(operation(item))
        }
        return result
    }
}

let finalResult = Array(1...10).myMap { $0 * 10 }
print(finalResult)
