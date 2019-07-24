import UIKit

//: Multiple ways to create arrays
var arrayOne: [Double] = []
var arrayTwo = [Double]()

var arrayThree: Array<Double> = Array()
var arrayFour: Array<Double> = []

var arrayFive = Array([113.0, 232.33])
var arraySix = Array(1...100)
var arraySeven = Array(repeating: "Vino", count: 10)

//: Multiple ways to create sets
var setOne: Set = [1, 2, 3, 4, 5, 6, 1, 2, 3, 5, 6, 1, 1, 1]
print(setOne)
var setTwo: Set<String> = ["Vino", "Vinoth", "Vino the developer"]
var setThree = Set<String>()
var setFour = Set(["Vino", "Vinoth", "Wenoth"])

//: Built-in Set Methods
setThree.insert("Vinoth")
setThree.contains("Vinoth") //true
setThree.remove("Vinoth")

//: Generate odd and even numbers
var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}


//: Convert array<Int> or [Int] to Set<Int>

var oddNumberSet = Set(oddNumbers)
let evenNumberSet = Set(evenNumbers)
print(oddNumberSet)
print(evenNumberSet)

//: Union
print(oddNumberSet.union(evenNumberSet))

//: SymmetricDifference
oddNumberSet.symmetricDifference(evenNumberSet)

//: Intersection
oddNumberSet.intersection(evenNumberSet)

//: Subtraction
oddNumberSet.subtract(evenNumberSet)

let numberSet = Set([1, 2, 3])
let secondNumberSet = Set([1, 2])

numberSet.intersection(secondNumberSet)
print(numberSet)

//: Filter / Sort
// Convert Sets to sorted Array
let sortedArray = evenNumberSet.sorted()
print(sortedArray)

// Functional Programming
let sortedArrayFromHighToLow = evenNumberSet.sorted { $0 > $1 }
print(sortedArrayFromHighToLow)

//: Practical Usage of Set
// 1. Finding unique letters
// 2. Finding unique visitors
// 3. Any game logic

//: Tuple

let firstScore = (name: "Vino", score: 4)
firstScore.0
firstScore.1

firstScore.name
firstScore.score

//: Practical Usage
let httpSuccess = (code: 200, description: "success")
httpSuccess.code

//: Bonus Tips
// Okay
var dog = "dog", cat = "cat"
print(dog)

var (x, y, z) = (1, 2, 3)
print(x)
print(y)

var shoppingList = ["Eggs", "Milk", "Rice"]

for (index, value) in shoppingList.enumerated() {
    print(index, value)
}
