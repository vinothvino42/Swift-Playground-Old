/*:
 # Property Observer
 > WillSet - It is called just before the value is stored.
 
 > DidSet - It is called immediately after the new value has been stored
 */

var myGrade: Int = 80 {
    willSet(newGrade) {
        print("About to change your grade to \(newGrade). MyGrade value is \(myGrade)")
    }
    didSet(oldValue) {
        print("You had \(oldValue) previously. Now your myGrade value is \(myGrade)")
    }
}

myGrade = 100

//: Step Counter
var totalSteps: Int = 20 {
    willSet(newTotalSteps) {
        print("About to set totalsteps to \(newTotalSteps)")
    }
    
    didSet(oldTotalSteps) {
        if totalSteps > oldTotalSteps {
            print("Added \(totalSteps - oldTotalSteps) steps")
        }
    }
}

totalSteps = 50
totalSteps = 45

//: Application

var isUserLoggedIn: Bool = false {
    willSet(newValue) {
        print("The user has tried something")
    }
    didSet {
        if isUserLoggedIn {
            print("The user has switched from \(oldValue) to \(isUserLoggedIn)")
            // Background Color
            // Animation
            // Pop Up
            // All kind of stuff
        }
    }
}

isUserLoggedIn = true
isUserLoggedIn = false
isUserLoggedIn = true
isUserLoggedIn = true
isUserLoggedIn = true

//: Similarity with Computed Property
//: 1. Always recalculated

//: What makes Property Observers different
//: 1. There is a default value and it is observer rather than calculated
//: 2. `WillSet` and `didSet` will not get called when initialize it






















