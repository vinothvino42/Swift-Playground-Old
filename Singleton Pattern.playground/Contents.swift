/*:
 # Singleton Pattern
 > A Singleton is an object which is instantiated exactly once.
 */
class AccountManager {
    
    static let sharedInstance = AccountManager()
    
    var userInfo = (ID: "Vinoth Vino", Password: 345345)
    func network() {
        
    }
    
    private init() {
        print("I'm created")
    }
}

//View Controller One
AccountManager.sharedInstance.userInfo.ID

//View Controller Two
AccountManager.sharedInstance.userInfo.ID = "Vinod"

//View Controller Three
AccountManager.sharedInstance.userInfo.ID

//: Example - `UIApplication`, `UserDefaults`, `NSNotification`.
