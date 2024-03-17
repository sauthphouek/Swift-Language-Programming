// Teach me about superclassing in Swift
// Superclassing is the process of creating a new class from an existing class.
// The new class is called a subclass, and the existing class is called a superclass.
//
// Subclassing is a fundamental part of object-oriented programming,
// and it allows you to create new classes that inherit properties and methods from existing classes.
//

// Syntax
// class SubclassName: SuperclassName {
//     // properties and methods
// }

// Example : Super class name : Vehicle
class Vehicle {
    var numberOfWheels: Int
    var color: String
    
    init(numberOfWheels: Int, color: String) {
        self.numberOfWheels = numberOfWheels
        self.color = color
        // why do we use self?
        // The self keyword is used to refer to properties and methods within the class.
    
    }
    
    func drive() {
        print("The vehicle is driving.")
    }

    convenience init() {
        self.init(numberOfWheels: 4, color: "black")
    } 
    // explain convenience init
    // A convenience initializer is a secondary initializer that provides an alternative
    //  way to create an instance of the class.

    deinit {
        print("The vehicle is being deinitialized.")
    }
}

// Example : Sub class name : Car 
// Describe the subclass Car
// The Car class is a subclass of the Vehicle class. 
// It has an additional property called brand, and it overrides the drive method of the Vehicle class.
class Car: Vehicle {
    var brand: String
    
    init(brand: String, numberOfWheels: Int, color: String) {
        self.brand = brand
        super.init(numberOfWheels: numberOfWheels, color: color)
    }
    
    override func drive() {
        print("The car is driving.")
    }
}

// create an instance of the Car class
var car1 = Car(brand: "Toyota", numberOfWheels: 4, color: "red")
car1.drive() // The car is driving.
print(car1.numberOfWheels) // 4
print(car1.color) // red
print(car1.brand) // Toyota

