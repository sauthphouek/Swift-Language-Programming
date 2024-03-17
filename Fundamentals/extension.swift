// In Swift, extensions are a powerful tool that allow you to add functionality 
// to existing types (classes, structs, enumerations, and protocols) 
// without modifying their original implementation. This promotes code 
// reusability, readability, and maintainability.


class Rectangle {
    var width:Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

}

extension Rectangle {
    var area:  Double {
        return width * height
    }

    func description() -> String {
        return "I'm a rectangle with an area of \(area)"
    }
}

let rect: Rectangle = Rectangle(width: 10, height: 20)
print(rect.area) // 200.0
print(rect.description()) // I'm a rectangle with an area of 200.0


// Provide new initializers
// You can use extensions to provide new initializers for an existing type.
// For example, you can provide a new initializer for the Rectangle 
// structure that creates a rectangle with a width and height of 0.
extension  Rectangle {
    convenience init() {
        self.init(width: 0, height: 0)
    }

}

let rect1: Rectangle = Rectangle()
print(rect1.width) // 0.0
print(rect1.height) // 0.0
