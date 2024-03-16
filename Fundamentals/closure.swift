// // Teach me about closure 
// // A closure is a self-contained block of code that can be passed around and used in your code.
// // Closures are similar to functions, but they are defined in a more compact and flexible way.
// // Closures are used to capture and store references to any constants and variables from the context in which they are defined.

// // Syntax
// // { (parameters) -> returnType in
// //     // code to be executed
// // }


// // Example
// let greetUser = {
//     print("Hello, User!")
// }


// let add:(Int, Int) -> Int = {
//     (number1:Int, number2:Int) -> Int in
//     print(number1 + number2)
//     return number1 + number2
// }

// let multiply:(Int, Int) -> Int = {
//     (number1:Int, number2:Int) -> Int in
//     print(number1 * number2)
//     return number1 * number2
// }

// let divide:(Int, Int) -> Int = {
//     (number1:Int, number2:Int) -> Int in
//     print(number1 / number2)
//     return number1 / number2
// }

// let subtract:(Int, Int) -> Int = {
//     (number1:Int, number2:Int) -> Int in
//     print(number1 - number2)
//     return number1 - number2
// }

// test(block: multiply)

// // func test 
// func test(block: ((Int,Int) -> Int)) {
//     print("Processing the numbers")
//     let sum = block(20, 30)
//     print("The sum is \(sum)")
// }

// // give me more detail about closure
// // A closure is a self-contained block of code that can be passed around and used in your code.
// // Closures are similar to functions, but they are defined in a more compact and flexible way.
// // Closures are used to capture and store references to any constants and variables from the context in which they are defined.
