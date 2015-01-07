// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//this is a comment line
/*this is a comment block
*/

"This is a string. 8 is a number in a string and can't be computed."


//Integers are whole numbers.

5
0
10000

// Doubles and floats are decimals
54.76

// Boolean 
true
false

//arrays we will cover later, but they are linear collections of numbers rather like data in a book, where the data can only be referenced by its page number
//dictionarys
//both are collections

//Variable: inferred  ie swift knew
var myVariable = "Hello world"
println(myVariable)

var mySecondVariable: String = "Hello world again"
mySecondVariable = "hello"

var x = 10

var y = 4

x + y
x * y
//Not getting remainder bc inferred type was integer.
x / y
x - y
x % y

y = 20
println(y)


let myName = "Tedi"


//myName "John" will error out because constants are immutable.

let amIHere: String? = "hello"

println(amIHere)
//? sets optional and ! unwraps it


/*********** Control Flow **************/

var myAge = 22
if myAge < 21 {
    println("You can't get in!")
}else  if myAge == 21 {
    println("Free drinks!")
}else if myAge > 21 && myAge < 25 {
    println("You can drink, but you can't rent a car")
}else {
    println("You can party!")
}
//can also use <= and >= for less/greater than equal to, as well as == equal to and != for not equal to
//if sets up condition. else if adds a second condition, if it's true you never get to else so be careful of order you use. Else does something if nothing else is true.

// for initialization; condition; increment
for var i = 1; i < 5; ++i {
println("Code is running \(i)")
}

//for n loop
for index in 1...5 {
    println(index)
}

//while loop. While condition is true, execute loop
var k = 1
while k < 10 {
    println("counting")
    ++k
}
