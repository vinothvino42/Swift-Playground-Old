/*:
 # Nested Enum
 ### Problem: Just more than one
 */

import UIKit

//: Intro to Nested Enum
enum FutureCourse {
    enum LearnSwiftWithBob: String {
        case generalProtocol
        case advancedEnum
        
        var chapterDescription: String {
            return self.rawValue
        }
    }
    
    enum UIKitFundamentals: String {
        case realmDatabase
        case noStoryboard
        case cloudComputing
        
        var chapterDescription: String {
            return self.rawValue
        }
    }
}

FutureCourse.LearnSwiftWithBob.generalProtocol.chapterDescription
FutureCourse.UIKitFundamentals.noStoryboard.chapterDescription

//: Game Design
struct Character {
    enum CharacterType {
        case prince
        case warrior
        case priest
    }
    
    enum Skill {
        case airwalk
        case transparency
        case prediction
    }
    
    let type: CharacterType
    let skill: Skill
}

let vino = Character(type: .warrior, skill: .airwalk)
vino.skill

//: Another Game Design
enum Wearable {
    enum Weight: Int {
        case light
        case medium
        case heavy
    }
    
    enum Price: Int {
        case leather
        case iron
        case steel
    }
    
    case armor(weight: Weight, price: Price)
    
    func getDescription() -> String {
        switch self {
        case let .armor(weight, price):
            return "You've chosen \(weight) and \(price)"
        }
    }
}

let myClothes = Wearable.armor(weight: .heavy, price: .steel)
print(myClothes.getDescription())
