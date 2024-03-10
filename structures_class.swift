// Swift - Structures and Classes
// Teach me about structures and classes
// Structures and classes are used to define custom data types in Swift.
// They allow you to encapsulate related properties and behaviors into a single unit.
// Structures and classes are similar, but they have some key differences:
// - Structures are value types, which means that when you create a new instance of a structure, it is copied when it is assigned to a new constant or variable, or when it is passed as an argument to a function.
// - Classes are reference types, which means that when you create a new instance of a class, it is passed by reference, and changes to the instance are reflected in all references to that instance.
//
// Syntax
// struct StructureName {
//     // properties and methods
// }

// class ClassName {
//     // properties and methods
// }

// Example
struct Person {
    var name: String
    var age: Int
    
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

class Animal {
    var species: String
    var sound: String
    
    init(species: String, sound: String) {
        self.species = species
        self.sound = sound
    }
    
    func makeSound() {
        print("The \(species) makes the sound \(sound).")
    }

    deinit {
        print("The \(species) is being deinitialized.")
    }
}

// create an instance of the Person structure
var person1 = Person(name: "John", age: 30)

// create an instance of the Animal class
var animal1 = Animal(species: "Dog", sound: "Woof")

// what is the different between Structures and Classes
// The main difference between structures and classes is
//  that structures are value types, while classes are reference types.

// 1. Value types
// - When you create a new instance of a structure, 
// it is copied when it is assigned to a new constant or variable, 
// or when it is passed as an argument to a function.
// - This means that changes to the instance do not affect other instances of the structure.

// example
var person2 = person1
person2.name = "Jane"
print(person1.name) // prints "John"

// 2. Reference types
// - When you create a new instance of a class,
// it is passed by reference, and changes to the instance are reflected in all references to that instance.
// - This means that changes to the instance affect all references to the instance.

// example
var animal2 = animal1
animal2.sound = "Meow"
animal1.makeSound() // prints "The Dog makes the sound Meow."
