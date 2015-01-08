// Lesson 04 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var name: String = "Mary"
var age: Int = 45


// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"
println("Hello \(name), you are \(age) years old!")


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
if age > 21 {
    println("You can drink")
}else if age >= 18 {
    println(" You can vote")
}else if age >= 16 {
    println("You can drive")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
if age >= 21 {
    println("You can drive, vote, and drink, but not at the same time!")
}else if age >= 18 && age < 21 {
    println("You can drive and vote")
}else if age > 16 && age < 18 {
    println("You can drive")
}


//// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)
//

for g in 1...50 {
    var multiple = 7 * g-1
    
//    for var i = 1 ; i < 50; ++i {
//    println(7* i- 1)
//}
//
//    println(multiple)
//}


//// TODO: Create a constant called number
let number = 3

//// TODO: Print whether the above number is even
if number % 2 == 0 && number != 0 {
    println("\(number) is an even number")
}else{
    println("\(number) is an odd number")
}

// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

var fibNum = 9, current = 0, next = 1, result = 0
for index  in 0..<fibNum {
    //current val is 3
    //temp value becomes 3
    let tempVar = current
    //current value becomes next (5). Declared as constant bc it won't change, more memory efficient/safer than var.
    current = next
    //next value becomes old current (temporary) + new current (old next)
    next = tempVar + current
    result = tempVar
}
println("fib Num is \(result)")



// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

println("Hello \(name), your name is \(countElements(name)) characters long!")


// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

//var p = Int(arc4random_uniform(10))

var sum = 0
    for i in 1...100 {
        sum +=  Int(rand())
    }
println(sum)


//sum += 10 is the same as saying sum

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
let fizz = 3
let buzz = 5
    for var i = 1; 1 <= 100; ++i {
        if ((i % fizz) == 0 && (i % buzz) == 0) {
            println("FizzBuzz")
        }else if i % buzz == 0{
            println("Buzz")
        }else if i % fizz == 0{
            println("Fizz")
}