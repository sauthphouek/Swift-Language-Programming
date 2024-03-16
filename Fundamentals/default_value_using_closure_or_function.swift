
// Teach me about default value using closure or function in Swift
// In Swift, you can use a closure or a function to provide a default value
//  for a property in a structure or class.

// Example
struct Person {
    var name: String
    var age: Int
    var greeting: () -> String = {
        return "Hello, my name is Sauth and I am 23 years old."
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func greet() -> String {
        return "Hello, my name is \(name) and I am \(age) years old."
    }
}

// create an instance of the Person structure
var person1 = Person(name: "John", age: 20)

// call the greeting closure
print(person1.greeting()) // Hello, my name is John and I am 30 years old.