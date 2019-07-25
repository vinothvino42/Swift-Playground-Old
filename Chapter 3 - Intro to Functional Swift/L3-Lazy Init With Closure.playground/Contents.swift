/*:
 # Lazy Init with Closure
 > How to initialize an object with a closure ?
 */
import UIKit

//: Unconventional Way
let box: UIView = {
    let view = UIView()
    return view
}()

//: Create UI Components
let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)

// ViewControllerOne
let vinoButton = UIButton(frame: buttonSize)
vinoButton.backgroundColor = .blue
vinoButton.titleLabel?.text = "Vino"
vinoButton.titleLabel?.textColor = .white

// ViewControllerTwo
let vinothButton = UIButton(frame: buttonSize)
vinothButton.backgroundColor = .darkGray
vinothButton.titleLabel?.text = "Vinoth"
vinothButton.titleLabel?.textColor = .white

// Function
func createButton(enterTItle: String) -> UIButton {
    let button = UIButton(frame: buttonSize)
    button.backgroundColor = .black
    button.titleLabel?.text = enterTItle
    return button
}

createButton(enterTItle: "Vinod")

//: Introducing Unconventional Way
struct Human {
    init() {
        print("iOS Developer")
    }
}

let createVino = { () -> Human in
    let human = Human()
    return human
}()

//: Create UIView Unconventionally
let vinoView = { () -> UIView in
    let view = UIView()
    view.backgroundColor = .blue
    return view
}()

let newVinoView: UIView = {
    let view = UIView()
    view.backgroundColor = .green
    return view
}()

let newNewVinoView: UIView = {
    let view = UIView()
    view.backgroundColor = .green
    return view
}()

//: ### Lazy Var
class IntenseMathProblem {
    lazy var complexNumber: Int = {
        1 * 1
    }()
}

let problem = IntenseMathProblem() // No value for ComplexNumber
problem.complexNumber // now, complexnumber is 1

class SortFromDatabase {
    // Data
    lazy var sortNumberFromDatabase: [Int] = {
        //Calculation and Sorting
        [1,2,3,4,5,6,7,8,9]
    }()
}
SortFromDatabase().sortNumberFromDatabase

class CompressionManager {
    lazy var compressedImage: UIImage = {
        let image = UIImage()
        // Compress the image
        // Logic
        return image
    }()
}

/*:
 Lazy Rules:
 
 1. You can't use lazy with `let` since there is no initial value, and it is attained later when it is accessed.
 2. You can't use lazy with `Computed Property` since computed property is always recalculated (requires CPU) when you
 modifiy any of the variables that has a relationship with the lazy property.
 3. lazy is only valid for member of a struct or class
*/
