/*:
 # Static and Mutating Methods with self
 ### Problem: Let's make it practical
 */

import UIKit

//: Practical with storyboard
enum Storyboard: String {
    case profile
    case setting
    case newsfeed
    
    var identifier: String {
        return self.rawValue
    }
}

let profile = Storyboard.profile
profile.identifier

//: API Guideline goal

func describeStorybaord(storyboard: Storyboard) -> String {
    switch storyboard {
    case .profile:
        return "\(storyboard.identifier): Profile Picture, Followers"
    case .setting:
        return "\(storyboard.identifier): Logout, Invite"
    case .newsfeed:
        return "\(storyboard.identifier): Videos, Texts"
    }
}

describeStorybaord(storyboard: .setting)

//: Mutating Methods
enum MealProcess: String {
    case breakfast, lunch, dinner
    
    var description: String {
        return self.rawValue
    }
    
    mutating func nextMeal() {
        print("Time to move on from \(self.description)")
        
        switch self {
        case .breakfast:
            self = .lunch
            print("I had a nice lunch")
        case .lunch:
            self = .dinner
            print("I had a nice dinner")
        case .dinner:
            self = .breakfast
            print("I had a nice breakfast")
        }
    }
}

var currentMeal = MealProcess.breakfast
currentMeal.nextMeal()
currentMeal.nextMeal()
currentMeal.nextMeal()

//: Static Method

// Bad Way
enum AppleDevices {
    case iWatch, iPhone, iMac, MacPro
    
    static func getAppleDevice(name: String) -> AppleDevices? {
        switch name {
        case "iWatch":
            return .iWatch
        case "iPhone":
            return .iPhone
        case "iMac":
            return .iMac
        case "MacPro":
            return .MacPro
        default:
            return nil
        }
    }
}

let userProduct = AppleDevices.getAppleDevice(name: "MacPro")

// Good Way

enum AppleDevicesNew: String {
    case iWatch, iPhone, iMac, MacPro
    
    static func getProduct(name: String) -> AppleDevicesNew? {
        return AppleDevicesNew(rawValue: name)
    }
    
    static func getAppleDevice(enterName: String) -> AppleDevicesNew? {
        switch enterName {
        case "iWatch", "iPhone", "iMac", "MacPro":
            return getProduct(name: enterName)
        default:
            return nil
        }
    }
}


//: Custom Init
enum AppleDevice: String {
    case iWatch, iPhone, iMac, MacPro
    
    init?(name: String) {
        if name == "iWatch" {
            self = .iWatch
        } else {
            return nil
        }
    }
}

AppleDevice(name: "iWatch")

enum IntCategory {
    case small
    case medium
    case big
    case weird
    
    init(number: Int) {
        switch number {
        case 0..<1000:
            self = .small
        case 1000..<100000:
            self = .medium
        case 100000..<1000000:
            self = .big
        default:
            self = .weird
        }
    }
}

IntCategory(number: 1241)
IntCategory(number: 24234234242)

//: ### Practical Case
enum HttpError: String {
    case code400 = "Bad Request"
    case code401 = "Unauthorized"
    case code402 = "Payment Required"
    case code403 = "Forbidden"
    case code404 = "Page Not Found"
    
    var description: String {
        return self.rawValue
    }
}

HttpError.code400.description

//: Cell Identifier
enum CellType: String {
    case ButtonValueCell
    case UnitEditCell
    case LabelCell
    case ResultLabelCell
    
    var name: String {
        return self.rawValue
    }
}

CellType.ButtonValueCell.name

enum NavigationTheme {
    case Placid
    case Warning
    case Danger
    
    var barTintColor: UIColor {
        switch self {
        case .Placid: return UIColor.clear
        case .Warning: return UIColor.yellow
        case .Danger: return UIColor.red
        }
    }
}

let colorSituation = NavigationTheme.Danger
colorSituation.barTintColor


extension NavigationTheme {
    init(numberOfTasks: Int) {
        switch numberOfTasks {
        case 0...3:
            self = .Placid
        case 4...9:
            self = .Warning
        default:
            self = .Danger
        }
    }
}

let currentColor = NavigationTheme(numberOfTasks: 4).barTintColor
