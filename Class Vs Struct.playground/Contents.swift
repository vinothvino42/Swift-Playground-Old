/*:
 # Class vs Struct
 > Class - Reference Type
 
 > Struct - Value Type
 */
//: ## Class
// Design Class
class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//: Create instance
var humanClassObject = Human(name: "Vino")
print(humanClassObject.name)

var newHumanClassObject = humanClassObject
newHumanClassObject.name = "Vinoth"

print(humanClassObject.name)    //Value changed

//: ## Struct
// Design Struct
struct HumanStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//: Create instance
var humanStructObject = HumanStruct(name: "Vinod")
var newHumanStructObject = humanStructObject
newHumanStructObject.name = "Vinoth Vino"
print(humanStructObject.name)   //Doesn't change the value

//: ## Difference in Mutability
//: ### Mutable Class
class VinoClass {
    var name = "Vino"
}
let vinoClassObj = VinoClass()
vinoClassObj.name = "Vinoth"
print(vinoClassObj.name)

//: ### Immutable Struct
struct VinoStruct {
    var name = "Vino"
}
let vinoStructObj = VinoStruct()
//vinoStructObj.name = "Vinoth" //It throws error
