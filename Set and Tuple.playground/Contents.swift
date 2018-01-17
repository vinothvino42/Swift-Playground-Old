/*:
 # Set and Tuple
 > Set - Eliminate Duplicate items and no defined ordering
 
 > Tuple - Combine all kinds of types
 */
//: ### Set

var arrayOne: [Double] = []
var arrayTwo = [Double]()
var arrayThree: Array<Double> = Array()
var arrayFour: Array<Double> = []
var arrayFive = Array([123.34,542.53])
var arraySix = Array(1...100)
var arraySeven = Array(repeating: "Vino", count: 10)

//: Multiple ways to create Sets
var setOne: Set = [1,2,3,4,5,5,2,3,6,7,7,5]
print(setOne)
var setTwo: Set<String> = ["vino","vinoth","vinoth vino"]
var setThree = Set<String>()
var setFour = Set(["vino","vinoth"])

//: Built in methods of Set

setThree.insert("vino")
setThree.insert("vinoth")
setThree.contains("vino") //True
setThree.remove("vinoth")

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
print(oddNumbers)
//: Convert array<Int> to Set<Int>
var setOddNumbers = Set(oddNumbers)
var setEvenNumbers = Set(evenNumbers)
print(setOddNumbers)
print(setEvenNumbers)

//: Union
setOddNumbers.union(setEvenNumbers)

//: Symmetric Difference
setOddNumbers.symmetricDifference(setEvenNumbers)

//: Intersection
setOddNumbers.intersection(setEvenNumbers)

//: Subtraction
setOddNumbers.subtract(setEvenNumbers)

var numberSet = Set([1,2,3])
let secondNumberSet = Set([1,2])

numberSet.subtract(secondNumberSet)
print(numberSet)

//: Sorted
var sortedArray = numberSet.sorted()
print(sortedArray)

//: Functional Programming
var sortedArrayFromHighToLow = evenNumbers.sorted { $0 > $1}
print(sortedArrayFromHighToLow)

//: Practical Usage Of Set
// 1. Finding unique visitors
// 2. Finding unique letters
// 3. Any Game Logic

//: ### Tuple

let firstScore = (name: "Vinoth", score: 4)
firstScore.0
firstScore.1

// OR

firstScore.name
firstScore.score

//: Practical usage of Tuple
let httpSuccess = (code: 200, status: "Success")
httpSuccess.code
httpSuccess.status

// Easy way to create multiple variables
var dog = "dog", cat = "cat"
print(dog)
print(cat)

// Using Tuple
var(x, y, z) = (4, 5, 7)
print(x)
print(y)
print(z)

var shoppingList = ["vino", "vinoth", "vinod"]

for (index, value) in shoppingList.enumerated() {
    print(index, value)
}

