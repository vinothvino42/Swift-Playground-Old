
/*:
 # Intermediate to Advanced Swift Concepts
 ## 1. Optionals
 ### Implict and Explicit Type
 */
let name: String = "Vinoth"     //Explicit
let myName = "Vinoth Vino"      //Implicit
let age: Int = 14               //Explicit
let myAge = 24                  //Implicit

//Optional type allows storing nil
let newName: String? = nil
let yourAge: Int? = 24
let yourName: String? = "Vinoth Vino"
//print(newName!)  //Found nil while unwrapping exception
print(yourName!)

/*:
 ## Unwrapping Optionals
 ### Force Unwrapping
*/
let unwrappedYourAge = yourAge!
print(unwrappedYourAge)
let unwrappedYourName = yourName
print(unwrappedYourName!)

/*:
 ### Optional Binding
 */
let imageFromTwitter: String? = "Vinoth's image"

if let image = imageFromTwitter {
    print(image)
} else {
    print("No image")
}
