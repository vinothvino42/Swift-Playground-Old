/*:
 # Completion Handler
 > Do something when something has been done.
 > When to use Completion Handler ?
 1. Notify the download has been completed
 2. Animation
 */
//: ### Practical UIKit example
import UIKit
let firstVC = UIViewController()
let nextVC = UIViewController()

firstVC.present(nextVC, animated: true, completion: nil)
firstVC.present(nextVC, animated: true) {
    () in
    print("Done")
}

// Another way
firstVC.present(nextVC, animated: true, completion: { print("Done") })
// Trailing closure
firstVC.present(nextVC, animated: true) { print("Done") }


//: Design Completion Handler Block
let myHandlerBlock: (Bool) -> () = { (isSuccess) in
    if isSuccess {
        print("Download has been done")
    }
}

let handlerBlock: (Bool) -> () = {
    if $0 {
        print("Downloaded")
        // Animate
        // Alert
    }
}

myHandlerBlock(true)

//: Design Function
func downloadImage(completionBlock: (Bool) -> Void) {
    for _ in 1...5 {
        print("Downloading")
    }
    completionBlock(true)
}

//: Pass Closure Indirectly
downloadImage(completionBlock: handlerBlock)

//: Pass Closure Directly
downloadImage(completionBlock: { (isSuccess) in
    if isSuccess {
        print("Done")
    }
})

downloadImage(completionBlock: {
    if $0 {
        print("Download has been done")
        // Animation
        // Pop
    }
})

//: Another Example
let handler: ([String]) -> Void = { (array) in
    print("Done working, \(array)")
    // Compress the image
    // Resize the image
    // Crop the image
}

handler(["Vino", "Vinoth", "iOS Dev"])

func workHard(doneBlock: ([String]) -> Void) {
    for i in 1...50 {
        print("Downloading \(i)%")
        // download
    }
    doneBlock(["image1", "image2", "image3", "image4", "image5"])
}

// Enter Closure Indirectly
workHard(doneBlock: handler)

// Enter Closure Directly
workHard(doneBlock: { (images: [String]) in
    print("Done working, \(images)")
    // Compress the image
    // Resize the image
    // Crop
})

