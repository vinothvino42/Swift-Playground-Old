/*:
 # Subscripts
 ### Normal Method
 */
struct HelloKitty {
    func saySomething() -> String {
        return "I'm Cute"
    }
}
HelloKitty().saySomething()

/*:
### Introducing Subscripts
*/
struct WeakDays {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}
let myDays = WeakDays()
myDays[2]

//: Dictionayr Type
var info = ["Height": 185, "Body Fat": 12.5, "Weight": 76]
let height = info["Height"]

struct HealthInfo {
    var info = ["Height": 185, "Body Fat": 12.5, "Weight": 76]
    
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }
}

let vinoInfo = HealthInfo()
let myHeight = vinoInfo["Footsize"]
let realHeight = vinoInfo["Height"]




























