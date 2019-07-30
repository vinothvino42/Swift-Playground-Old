/*:
# Closure Retain Cycle
 > How to use `capture lists` to prevent retain cycle in closures. When to use unowned
*/

//Design Class
class Vino {
    var vinoClosure: (() -> ())?
    var name: String = "Vino"
    
    init() {
        vinoClosure = { [unowned self] in
            //guard let object = self { return }
            print("\(self.name) iOS Developer")
        }
    }
    
    deinit {
        print("Vino class gone")
    }
}

var vinoObj: Vino? = Vino()
vinoObj?.vinoClosure?()

vinoObj = nil

// Design Independent class 
class Owner {
    var card: CreditCard?
    deinit {
        print("Owner gone")
    }
}

// Design Dependent class
class CreditCard {
    unowned let owner: Owner
    
    init(enterOwner: Owner) {
        owner = enterOwner
    }
    
    deinit {
        print("Card gone")
    }
}

var vino: Owner? = Owner()
var myCard = CreditCard(enterOwner: vino!)
vino?.card = myCard

vino = nil
// myCard.owner //crash
