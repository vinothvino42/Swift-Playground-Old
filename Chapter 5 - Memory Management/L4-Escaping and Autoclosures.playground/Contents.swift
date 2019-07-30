/*:
# Escaping and Autoclosure
 > @escaping and @autoclosures. Why are those ?
*/


import UIKit

//: scenario - 1 : If the closure can be executed after the function finishes == @escaping
var closureBlocks: [() -> Void] = []

func funcWithClosure(closure: @escaping () -> Void) {
    closureBlocks.append(closure)
    print("Function done")
}

//: Scenario - 2 :
func funcWithNetworkingClosure(closure: @escaping () -> Void) {
    DispatchQueue.global().async {
        closure()   //Ex) downloading
    }
    print("Function done")
}

funcWithNetworkingClosure {
    for i in 1...10 {
        print("downloading \(i)%")
    }
}

//: Normal Function

class Normal {
    let name = "vinoth"
    
    func normalFuncWithClosure(closure: (String) -> Void) {
        closure(self.name)
    }
}

Normal().normalFuncWithClosure { (myName) in
    print(myName)
}

// By default, normal functions/closures are non-escaping

/* Benefits of Non-Escaping
* 1. There is no retention cycle for non-escaping
* 2. You may use self keyword without worrying about memory leak.
* 3. Performance and the ability for the compiler to optimize.
*/


//: What is @autoclosure ?

func checkIDCard(hasCard: () -> Bool) {
    if hasCard() {
        print("You've an ID")
    }
}

checkIDCard(hasCard: { return true })
checkIDCard(hasCard: { true })
checkIDCard { true }

// Autoclosure - Use if there's no parameter and simply the closure block return something. It may be string, bool etc
func checkIDCardWithAutoClosure(hasCard: @autoclosure () -> Bool) {
    if hasCard() {
        print("You've an ID Card")
    }
}
checkIDCardWithAutoClosure(hasCard: true)

//: Lazy Init Capture
// Lazy var - Non Escaping by default, don't worry about retain cycle.
class VinoGreet {
    var name = "Vino the developer"
    
    lazy var greeting: String = {
       return "Hello, \(self.name)"
    }()
    
    deinit {
        print("I'm gone..")
    }
}

var vinoGreet: VinoGreet? = VinoGreet()
vinoGreet?.greeting
vinoGreet = nil
