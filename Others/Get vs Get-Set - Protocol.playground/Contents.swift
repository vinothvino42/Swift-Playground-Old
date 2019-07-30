import Foundation

// Get

protocol VoiceAssistant {
    var name: String { get }
}

// Usage
struct Siri: VoiceAssistant {
    let name: String = "Siri"
}

struct Alexa: VoiceAssistant {
    var name: String = "Alexa"
}

struct Cortana: VoiceAssistant {
    let assistantName: String = "Cortana"
    var name: String {
        get {
            return assistantName
        }
    }
}

// Get and Get-Set
protocol VoiceAssistantNew {
    var name: String { get }
    var voice: String { get set }
}

// Usage
struct SiriNew: VoiceAssistantNew {
    let name: String = "Siri"
    var voice: String = "Vinoth"
}

struct CortanaNew: VoiceAssistantNew {
    let assistantName: String = "Cortana"
    var assistantVoice: String = "Vinoth"
    var name: String {
        get {
            return assistantName
        }
    }
    
    var voice: String {
        get {
            return assistantVoice
        }
        set {
            assistantVoice = newValue
        }
    }
}

// If a protocol requires a property to be gettable and settable, that property requirement cannot be fulfilled by a constant (let) stored property or a read-only computed property.
protocol VoiceAssistantError {
    var name: String { get }
    var voice: String { get set }
}

struct SiriError: VoiceAssistantError {
    let name = "Siri"
//    let voice = "Vinoth" // Compilation Error: Candidate is not settable, but protocol requires it.
    var voice = "Vinoth"
}

// How get is different from get-set

protocol VoiceAssistantGetSet {
    var name: String { get }
    var voice: String { get set }
    var version: String { get }
}

struct SiriGetSet: VoiceAssistantGetSet {
    let name = "Siri"
    var voice: String {
        get {
            return "Vinoth"
        }
        set { }
    }
    var version = "1.0"
}

var myVoiceAssistant = SiriGetSet()
myVoiceAssistant.voice = "Vinoth Vino"
myVoiceAssistant.version = "2.0"
