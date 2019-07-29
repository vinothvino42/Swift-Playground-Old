/*:
 # Protocol Extension
 > I don't even want to type anymore
 */
protocol MathGenius {
    func calculateGPA()
}

extension MathGenius {
    func calculateGPA() {
        print("Calculating GPA")
    }
}

struct Vino: MathGenius {}
Vino().calculateGPA()

class Vinoth: MathGenius {
    func calculateGPA() {
        print("3.7 GPA")
    }
}
Vinoth().calculateGPA()

//: Practical Protocol Extension
protocol FindArea {
    func calculateArea(side: Double, length: Double) -> String
}

extension FindArea {
    func calculateArea(side: Double, length: Double) -> String {
        let area = String(side * length)
        return "The area is \(area)"
    }
}

struct Square: FindArea {}
struct Hexagon: FindArea {}
Square().calculateArea(side: 4, length: 10)
Hexagon().calculateArea(side: 5, length: 10)

//: Usage Case
//: 1. UILabel, UIImageVIew, UIVIew -> Animation
//: 2. Storyboard Identifier
//: 3. Reusable table and collection view cells
