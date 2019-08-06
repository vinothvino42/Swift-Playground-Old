/*:
 # Type Eraser
 > Problem : Let's circumvent the problem
 */

import UIKit

//: Design File Type
struct Folder {}
struct Cell {}

//: Design Protocol
protocol Listable {
    associatedtype FileType
    func getFileType() -> String
}

//: Design Classes
class FolderCell: Listable {
    typealias FileType = Folder
    func getFileType() -> String {
        return "FolderCell with \(FileType.self) type"
    }
}

class CollectionCell: Listable {
    typealias FileType = Folder
    func getFileType() -> String {
        return "CollectionCell with \(FileType.self) type"
    }
}

class ListCell: Listable {
    typealias FileType = Cell
    func getFileType() -> String {
        return "ListCell with \(FileType.self) type"
    }
}
/*:
 ### Prerequsites
 1. Generics
 2. Closure
 */

//: Design Wrapper
class AnyListableCell<T>: Listable {
    typealias FileType = T
    private let _getFileType: () -> String
    
    init<U: Listable>(_ enterAnyCell: U) where U.FileType == T {
        _getFileType = enterAnyCell.getFileType
    }
    
    func getFileType() -> String {
        return _getFileType()
    }
}

let collectionCell: AnyListableCell = AnyListableCell(CollectionCell())
let listCell: AnyListableCell = AnyListableCell(ListCell())

print(collectionCell.getFileType())
print(listCell.getFileType())

// Erase Abstract Type (<T>, associated type) to Concrete Type ( Folder, Cell )








