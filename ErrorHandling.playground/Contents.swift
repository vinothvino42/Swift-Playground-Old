/*:
 # Error Handling
 > Error Handling is just another way to write an else-if statement to deal with error message
 */
//: ## Error Handling with Object Initialization
// Design Error (1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call a function (2/3)
func checkHeightError(height: Int) throws {
    
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy!")
    }
}

// Handling error
do {
    try checkHeightError(height: 400)
} catch HeightError.maxHeight {
    print("You're too tall")
} catch HeightError.minHeight {
    print("You're too small")
}

//: ## Error Handling with Object Initialization

// Design Error
enum CourseError: Error {
    case noName
}

// Call a function

class Course {
    
    var name: String?
    
    init(name: String) throws {
        if name == "" {
            throw CourseError.noName
        } else {
            self.name = name
            print("You've created an Object")
        }
    }
}

// Handling Error
do {
    let myCourse = try Course(name: "")
} catch CourseError.noName {
    print("Please enter the name here")
}

//: Distinguish between Try? , Try!
// ### Try?
let newCourse = try? Course(name: "")
// ### Try!
let myNewCourse = try! Course(name: "Course")
//let newCourseTwo = try! Course(name: "")  //It'll crash


