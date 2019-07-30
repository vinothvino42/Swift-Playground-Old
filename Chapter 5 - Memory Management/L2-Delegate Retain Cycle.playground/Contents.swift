/*:
 # Delegate Retain Cycle
 > Why delegate should be `weak var`
 */
//: Design Protocol
protocol SendDataDelegate: class {}

//: Design Sender/Delegator
class SendingVC {
    weak var delegate: SendDataDelegate?
    
    deinit {
        print("Delegator gone")
    }
}

//: Design Receiver/Delegate
import UIKit
class ReceivingVC: SendDataDelegate {
    lazy var sendingVC: SendingVC = {
        let vc = SendingVC()
        vc.delegate = self
        return vc
    }()
   
    deinit {
        print("Delegate gone")
    }
}

var receivingVC: ReceivingVC? = ReceivingVC()
receivingVC?.sendingVC
receivingVC = nil

//: Rules
//: - A `weak` reference allows the referencing object to becoming `nil` (this happens automatically when the referenced object is deallocated)
//: - Based on the rule above, the referencing object/variable must be `optional`
