// Failable initializer in Swift
// A failable initializer is an initializer that can return nil.
//
// You define a failable initializer by placing a question mark after the init keyword.

// Syntax
// struct SomeStructure {
//     init?() {
//         // initialization code
//         // if initialization fails, return nil
//     }
// }



/// struct person 

// struct Person {
//     var name: String
//     var age: Int
    
//     init?(name: String, age: Int) {
//         if age < 0 {
//             return nil
//         }
//         self.name = name
//         self.age = age
//     }

//     // What is init?
//     // The init method is a special method that is called when a new instance of the structure is created.
// }

// // create an instance of the Person structure
// if let person1 = Person(name: "John", age: 30) {
//     print("The person's name is \(person1.name) and their age is \(person1.age).")
// } else {
//     print("The age is invalid.")
// }


// Required initializer in Swift
// A required initializer is an initializer that must be implemented by all subclasses of a class.

// You define a required initializer by writing the required keyword before the init keyword.

// Syntax
// class SomeClass {
//     required init() {
//         // initialization code 
//     }
// }

class Vehicle {
    var numberOfWheels: Int
    var color: String
    
    required init(numberOfWheels: Int, color: String) {
        self.numberOfWheels = numberOfWheels
        self.color = color
    }
}

class Car: Vehicle {
    var brand: String
    
    init(brand: String, numberOfWheels: Int, color: String) {
        self.brand = brand
        super.init(numberOfWheels: numberOfWheels, color: color)
    }
    
    required init(numberOfWheels: Int, color: String) {
        self.brand = "Unknown"
        super.init(numberOfWheels: numberOfWheels, color: color)
    }
}

// create an instance of the Car class
var car1 = Car(brand: "Toyota", numberOfWheels: 4, color: "red")
print(car1.brand) // Toyota
print(car1.numberOfWheels) // 4
print(car1.color) // red
// The required keyword is used to indicate that the init method must be implemented by all subclasses of the class.
// In this example, the Car class has a required initializer that is called when a new instance of the class is created.
// The required initializer is called when a new instance of the class is created, and it is used to initialize the properties of the class.


// deinitialize 

class Person {
    var name:String
    var age:Int 
    var address:String
    required init (name: String, age: Int, address: String ) {
        self.name = name
        self.age = age 
        self.address = address
        print("init")
    }

    convenience init (name:String ) {
        self.init(name: name, age: 0, address: "")
        print("convenience Init")
    }

    deinit {
        print("Deinit object \(name)")
    }
}

var person: Person? = Person(name: "Test")
person = nil 

var person1 : Person = Person(name: "Test1")

person = Person(name: "Test2")



class Student: Person {
    init()
}

var student: Person = Person() 
