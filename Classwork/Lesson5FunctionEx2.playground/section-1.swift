// Playground - noun: a place where people can play

import UIKit

// Playground - noun: a place where people can play
// Lesson 05

import Foundation
// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func hello() {
    println("Hello world")
}
for i in 1...9 {
    hello()
}
hello()


//// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times
//
func hitLine() {
    for i in 0..<20 {
        println("Hit this line \(i) times")
    }
}
hitLine()


//// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"
//
func print(word: String) {
    println("Hello \(word)!")}
print("James")


////// TODO: Write a function that accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"
//
func showThing(theThing:String?) {
    if let presentThing = theThing {        println("Hello \(presentThing)")
    } else {        println("Hello world!")
    }
}
showThing("cheeseburger")

        
        // TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.
        
func fib(place: Int)-> Int{
            var fibNum = place, current = 0, next = 1, result = 0
            for index in 0..<fibNum {
    let tempVar = current
    current = next
    next = tempVar + current
    result = tempVar
            }
            return result
}

fib(6)
////
////// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.
/////
//what I need to accomplish is to iterate the fib fuction 0-19 times and put the result into an array and sum the array.
//
func sumTwentyFibs() {
    var sum = 0
    for index in 0..<20 {
    sum += fib(index)
    }
    println(sum)
}
sumTwentyFibs()
    
    //// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.
    //////
func isPrime(value: Int) -> Bool {
        if value <= 3 {
        return value >= 2
        }
        println("\(value) is a prime")
        if value % 2 == 0 || value % 3 == 0 {
            return false
        }
        println("\(value) is not a prime")
        for  var i = 5; i * i <= value; i += 6 {
            println("\(value) is not a prime")
            if value % i == 0 || value % (i+2) == 0 {
            return false
            }
        }
        return true
        println("\(value) is a prime.")
}
isPrime(76)
        

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

func fibPrime() {
    for index in 1...20 {
    var number = fib(index)
    if number <= 1 {
        println("\(number) is not a prime or composite.")
    } else if number > 1 && isPrime(number) {
        println("\(number) is prime")
    } else {
        println("\(number) is composite.")
    }
    }
}
fibPrime()
    
//
// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
//
//
func totalBill(bill: Float, percent: Float?) -> (total:Float, tip:Float) {
    
    if let gratuity = percent {
    let tip = bill * gratuity
    let total = bill + tip
    return (total, tip)
}else {
    return (bill, 0.0)
    }
}


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

func reverseString(s: String) -> String {
    var result = ""
    result.extend(reverse(s))
    return result
}
println(reverseString("asdf"))
println(reverseString("pqrs"))




// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.
//
//// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).
//
//let aString = "anutforajaroftuna"
//
//var reverse = ""
//
//for scalar in aString.unicodeScalars {
//    var char = "\(scalar)"
//    reverse = char + reverse
//}
//
//println(aString == reverse)
//
// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings
//
// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times}}
//
