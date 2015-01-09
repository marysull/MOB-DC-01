// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func hello() {
    println("hello world")
}

hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
   let newSum = firstNum + secondNum
    return newSum
    
}

 sum (10,10)

var x = sum(10,20)
var y = sum(x, 15)


func fib(place place: Int)-> Int{
var fibNum = place, current = 0, next = 1, result = 0
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
return result
}
var q = 9
fib(place: q)
fib (place: 23)
fib(place: 30)
fib(place: 30)

var num: Int? = 5
if let numValue = num {
    println(num! + 5)
}
//always use if let numValue = num {
//println(num! + 5)
//to check the unwrap for an optional
//only run this code if num is not nil. So code can be ignored.

func save(name: String)  -> (first: String, last: String) {
    var firstName = name
    var lastName = "Konda"
    return (name, lastName)
}

var myName = save("Tedi")
myName.first
myName.last
