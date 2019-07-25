/*:
 # Capture Lists
 */

var a = 0
var b = 0

//: Design Closure

let newClosure = { print(a, b) }
newClosure()    // (0,0)

//: Design Closure Array

var closureArray: [() -> ()] = []
var i = 0

for _ in 1...5 {
    closureArray.append {
        print(i)
    }
    i += 1
}

closureArray[0]()   // 5
closureArray[1]()   // 5
closureArray[2]()   // 5
closureArray[3]()   // 5
closureArray[4]()   // 5

//: Characteristics of Closure: **Reference Type**

var c = 0
var d = 0

let smartClosure: () -> () = { () in
    print(c, d)
}

smartClosure()  // (0,0)

c = 9
d = 9

smartClosure()  // (9,9)

//: ### Capture List
//: > Don't Reference, Copy

let captureValueClosure: () -> () = { [c, d] in
    print(c, d)
}

captureValueClosure()   // (9,9)

c = 20
d = 20

captureValueClosure()   // (9,9)

//: Design Closure Array
var smartClosureArray: [() -> ()] = []
var j = 0

//: Append Closure
for _ in 1...5 {
    smartClosureArray.append { [num = j] in   //Capture List
      //  print(j)
        print(num)
    }
    j += 1
}

smartClosureArray[0]() // 0
smartClosureArray[1]() // 1
smartClosureArray[2]() // 2
smartClosureArray[3]() // 3
smartClosureArray[4]() // 4

