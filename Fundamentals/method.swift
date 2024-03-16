// Teach me about method in Swift

// There are two types of methods in Swift
// 1. Instance methods
// 2. Static methods

// 1. Instance methods
// Instance methods are functions that belong to instances of a particular class, 
// structure, or enumeration. They support the functionality of those instances, 
// either by providing ways to access and modify instance properties, 
// or by providing functionality related to the instance’s purpose.

// example
class Counter {
    var count: Int {
        willSet {
            print("The new value is \(newValue)")
        }
        didSet {
            print("The old value is \(oldValue)")
        }
    }
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }

    // get and set
    var total: Int {
        get {
            return count
        }
        set {
            count = newValue
        }
    }

    init() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count) // 1
counter.increment(by: 5)
print(counter.count) // 6
counter.reset()





// 2. Static methods
// Static methods are functions that are called on the type itself,
// not on an instance of that type. You indicate static methods by 
// writing the static keyword before the method’s func keyword.

// example
class SomeClass {
    class func someTypeMethod() {
        print("This is a static method")
    }
}

SomeClass.someTypeMethod() // This is a static method




// create instance method in Swift
class Temperature {
    var celsius: Double = 0.0 {
        willSet {
            print("The new value is \(newValue)")
        }
        // explain willSet 
        // The willSet observer is called just before the value is stored.
        // It’s passed the new value that’s about to be stored, and you can use it to
        // compare the new value to the old value, 
        // or to take some other action before the new value is stored.


        didSet {
            print("The old value is \(oldValue)")
        }
        // explain didSet
        // The didSet observer is called immediately after the new value is stored.
        // It’s not passed any arguments, but the old value of the property is available
        // with a default name of oldValue.
        

        
    }
}

let temperature = Temperature()
temperature.celsius = 10.0
// The new value is 10.0
// The old value is 0.0
