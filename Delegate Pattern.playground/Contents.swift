/*:
 # Delegate Pattern
 > How does delegate work ?
 > Communicate/Pass Data between objects
 
 **Goal:** Send data from `FirstVC` to `SecondVC`
*/

// tableView.delegate = self
// collectionView.delegate = self

//: ### CEO and Secretary Relationship
//: Design Protocol
protocol PassDataDelegate {
    func passData(data: String)
}

//: Design Delegator (Sender)
class FirstVC {
    var delegate: PassDataDelegate?
}
FirstVC().delegate?.passData(data: "Hey iOS Developer")

//: Design Delegate (Receiver)
class SecondVC: PassDataDelegate {
    func passData(data: String) {
        print("Data Received : \(data)")
        // Animation
        // UI Update
        // Pop up
    }
}

//: Design another class
class ThirdVC: PassDataDelegate {
    func passData(data: String) {
        print("Something has happened")
    }
}

//: Create Objects
let firstVC = FirstVC()
let secondVC = SecondVC()
let thirdVC = ThirdVC()

//: Assign Delegate
//firstVC.delegate = thirdVC
firstVC.delegate = secondVC
firstVC.delegate?.passData(data: "a bunch of data")

//: Practical Example in iOS
import UIKit

class VinoViewController: UIViewController, UITableViewDelegate {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        // Go to next view controller
    }
}

// tableView.delegate?.tableView(tableView, didSelectRowAt: indexPath)

