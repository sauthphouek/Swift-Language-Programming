// Teach me protocol in Swift 
// Protocols in Swift define a blueprint of methods, properties, and othe requirement that 
// a class, structure, or enumeration can conform to.



protocol Drawable {
    func draw()

    var name : String {get set}
}

protocol Writable  {
    func write()
}

class Circle : Drawable, Writable {
    func draw()  {
        print("I'm drawing")
    }

    func write() {
        print("I'm writing")
    }
}


class Drawer {
    var delegate : Drawable?
//    
//    init(delegate: Drawable? = nil) {
//        self.delegate = delegate
//    }
}

var drawer: Drawable?
var write: Writable?
let circle:Circle = Circle()

drawer = circle
print(drawer!.draw())
print(write!.write())


// optional protocol requirements
// optional protocol start with @objc 
import Foundation

@objc protocol SomeProtocol { 
    // required method
    func requiredMethod() 

    // option method
    @objc optional func optionalMethod() 
}


// class ImplementProtocol 
class ImplementProtocol: SomeProtocol { 
    func optionalMethod() {
        print("this is optional method protocol")
    }

    func requiredMethod() {
        print("This is required method protocol")
    }

}



//  Swift - Type Casting 

// Type casting in Swift is a way to check tye type of an instance at runtime and convert it to another type. 

// Two ways to perform type casting: as? and as!. 
// The as? return an optional value of the type being to cast
// The as! return nil value of the type being to cast 

class Animal {} 
class Dog: Animal {}
let myDog = Dog()
if let animal = myDog as? Animal {
// Do something with animal
 }

// Swift - DownCasting 
// DownCasting is the process of casting superclass instance to its subclass type.

class Shape {}
class Circle: Shape {
    func draw() {
    // Draw a circle
    } 
}
let shape: Shape = Circle()
if let circle = shape as? Circle {
    circle.draw() 
}
