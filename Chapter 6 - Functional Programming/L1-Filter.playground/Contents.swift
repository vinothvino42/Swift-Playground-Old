/*:
 # Functional Programming
 ## Filter
 > Problem : How to get things done with one line of code ?
 */

import UIKit

//: Imperative / Non-Functional
// Get even numbers

var evenNumbers = [Int]()

for i in 1...10 {
    if i % 2 == 0 {
        evenNumbers.append(i)
    }
}

//: Declarative / Functional Programming
let evenNum = Array(1...10).filter { (number) in number % 2 == 0 }
Array(1...10).filter { $0 % 2 == 0 }
print(evenNum)


//: ### Become an a student

let recentGrade = ["A", "A", "A", "A", "B", "D"]

//: Imperative / Non - Functional
var happyGrade: [String] = []

for grade in recentGrade {
    if grade == "A" {
        happyGrade.append(grade)
    }
}

print(happyGrade)

//: Declarative / Functional way
// Create a closure block that returns true / false

var isMomHappy: (String) -> Bool = { (grade) in
    return grade == "A"
}

isMomHappy("A")
isMomHappy("B")

// Another way
isMomHappy = { $0 == "A" }

// Create a function that takes the closure
func simpleStringFilter(grades: [String], operation: (String) -> Bool) -> [String] {
    var happyGrade: [String] = []
    for grade in grades {
        if operation(grade) {
            happyGrade.append(grade)
        } else {
            print("Not the grade I want")
        }
    }
    return happyGrade
}

// Pass the closure block indirectly
print(simpleStringFilter(grades: recentGrade, operation: isMomHappy))

// Pass the closure block directly
print(simpleStringFilter(grades: recentGrade) { grade in return grade == "A"})


// Generic way
func myFilter<T>(array: [T], operation: (T) -> Bool) -> [T] {
    var result: [T] = []
    for element in array {
        if operation(element) {
            result.append(element)
        } else {
            print("Not the grade I want")
        }
    }
    return result
}

let gradeStringArr = myFilter(array: recentGrade) { element in return element == "A"}
print("Generic way")
print(gradeStringArr)

//: Ex 1) Filter numbers

let aStudent = myFilter(array: Array(1...100), operation: { $0 > 93 && $0 <= 100 })
print(aStudent)


//: Ex 2) Vote counting
let answers = [true, false, true, false, false, false, false, true]
let trueAnswers = myFilter(array: answers, operation: { $0 == true })
print(trueAnswers)

//: Trailing closure
let falseAnswer = myFilter(array: answers) { $0 == false }
print(falseAnswer)

//: The bulit in filter function
let zeroToHund = Array(1...100)
zeroToHund.filter { $0 % 2 == 0 }.filter { $0 <= 50 }
print(zeroToHund)

//: The Purest Form
extension Array {
    func myFilter(_ operation: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for item in self {
            if operation(item) {
                result.append(item)
            }
        }
        return result
    }
}

let result = Array(1...50).myFilter { $0 % 2 == 0 }
print("Array Extension : \(result)")
