// import Foundation
import Foundation
let data:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print(data[0])


// case 
let grade:String = "B" 

switch grade {
    case "A":
        print("Excellent")
    case "B":
        print("Good")
    case "C":
        print("Average")
    case "D":
        print("Poor")
    default:
        print("Invalid grade")
}


let number:Int = 10 

if (number > 0) {
    print("Positive number")
} else if (number < 0) {
    print("Negative number")
} else {
    print("Number is 0")
}

print("New Year", 2022, "See you soon!", separator: ". ")
print("New Year", 2022, "See you soon!", separator: ". ")

// separator and terminator
// separator is used to separate the items in the print statement
// terminator is used to specify the end of the print statement

var year:Int = 2014
print("Swift was introduced in \(year)")



// enumeration
enum Month :String {
    case January = "January"
    case February = "February"
    case March = "March"
    case April = "April"
    case May = "May"
    case June = "June"
    case July = "July"
    case August = "August"
    case September = "September"
    case October = "October"
    case November = "November"
    case December = "December"
}

enum Day {
    case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

var currentMonth:Month = .March
var currentDay:Day = .Monday
print(currentMonth.rawValue)
// what is rawValue
// The raw value of an enumeration is the default value of the enumeration. 
// It is used to store the value of the enumeration as a raw value. 
// The raw value of an enumeration is defined as part of the enumeration definition.  

print(currentDay)

// what is the good practice to use enum
// The good practice to use enum is to use it when you have a fixed set of values that are related to each other.
// For example, the days of the week, the months of the year, etc.
// give me the example of enum
enum Direction {
    case North
    case South
    case East
    case West
}
// why we use enum without raw value
// We use enum without raw value when we want to define a set of related values that are not associated with any specific raw value.

/// using enum Month to define the seasons of the year
switch currentMonth {
    case .December, .January, .February:
        print("This is Winter")
    case .March, .April, .May:
        print("This is Spring")
    case .June, .July, .August:
        print("This is Summer")
    case .September, .October, .November:
        print("This is Autumn")
}

// Swift - Loop
// Teach me about loop
// A loop is a control structure that allows you to execute a block of code repeatedly.
// There are different types of loops in Swift, such as for loop, while loop, and repeat-while loop.

// What about do-while loop in Swift
// Swift does not have a do-while loop. 
// Instead, it has a repeat-while loop, 
// which is similar to the do-while loop in other programming languages.


// 1. for loop
// The for loop is used to iterate over a sequence, such as a range of numbers, an array, or a string.
// The for loop in Swift has the following syntax:
// for item in sequence {
//     // code to be executed
// }

// Example
for index:Int in 1...5 {
    print("This is number \(index)")
}

// 2. while loop
// The while loop is used to execute a block of code repeatedly as long as a condition is true.
// The while loop in Swift has the following syntax:
// while condition {
//     // code to be executed
// }

// Example
var counter:Int = 5
while counter > 0 {
    print("Counter is \(counter)")
    counter -= 1
}

// 3. repeat-while loop
// The repeat-while loop is similar to the while loop, but the condition is checked at the end of the loop.
// This means that the block of code is executed at least once, even if the condition is false.
// The repeat-while loop in Swift has the following syntax:
// repeat {
//     // code to be executed
// } while condition 


// Example
var counter1:Int = 5
repeat {
    print("Counter is \(counter1)")
    counter1 -= 1
} while counter1 > 0


// Swift - Functions
// Teach me about function
// A function is a block of code that performs a specific task.
// Functions are used to organize code into reusable blocks, which makes the code easier to read and maintain.
// In Swift, a function is defined using the func keyword, followed by the function name and a set of parentheses.
// The function body is enclosed in curly braces.

// Syntax
// func functionName(parameters) -> returnType {
//     // code to be executed
//     return value
// }

// Example
func greet(name:String) -> String {
    return "Hello, \(name)!"
}

print(greet(name: "John"))



func addNumber(number1: Int, number2: Int) -> Int {
    // convert the numbers to integers
    // let number1:Int = Int(number1)
    // let number2:Int = Int(number2)  
    return number1 + number2
}

print (addNumber(number1: 20, number2: 30))




print("Enter your favorite programming language:")
let name:String? = readLine()

print("Your favorite programming language is \(name!).")


