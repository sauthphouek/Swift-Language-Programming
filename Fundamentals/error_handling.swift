
// Error handling in Swift 

// In Swift, you can use error handling to respond to error conditions
//  that might occur when your program is running.

// You use the try keyword to call a function that can throw an error,
//  and the do-catch statement to handle the error.

// Example
enum CustomError: Error {
    case invalidAge(String)
    case errorRunTime(String)

}

func processInput(age: Int) throws {
    if age < 0 {
        throw CustomError.invalidAge("The age cannot be negative.")
    } else if age > 100 {
        throw CustomError.invalidAge("The age cannot be greater than 100.")
    } else {
        print("The age is valid.")
    }
}

do {
    try processInput(age: 0)
} catch CustomError.invalidAge(let message) {
    print(message)
} catch CustomError.errorRunTime(let message) {
    print(message)
} 
catch {
    print("An error occurred.")
}