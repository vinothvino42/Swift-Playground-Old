/*:
 # Protocol Pitfalls
 > Problem : Can't be used it as type.
 */

import UIKit

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

print(FolderCell().getFileType())

class CollectionCell: Listable {
    typealias FileType = Cell
    func getFileType() -> String {
        return "CollectionCell with \(FileType.self) type"
    }
}

print(CollectionCell().getFileType())

class ListCell: Listable {
    typealias FileType = Cell
    func getFileType() -> String {
        return "ListCell with \(FileType.self) type"
    }
}

//: Problem
//: > Listable can only be used as a generic constraint because it has Self or associated type requirements.
//: >  Protocol as Type, it'll not work with associated type
//let cell: Listable = CollectionCell()

// Works
func enterListCell<T: Listable>(enterCell: T) {}
enterListCell(enterCell: FolderCell())
enterListCell(enterCell: ListCell())

let cell: Listable = arc4random() * 2 == 0 ? FolderCell() : ListCell()
// let cell: [Listable] = [CollectionCell(), ListCell()]
