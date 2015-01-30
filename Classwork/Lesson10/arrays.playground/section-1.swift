// Playground - noun: a place where people can play

import UIKit

//array is a type

var myArray = [1, 4, 10, 15, 20] //inferred type

var secondArray: [Int] = [] //when creating empty array, have to be explicit about type of array

var stringArray: [String] = []

myArray[2] //this gets the third number, just subtract one

myArray.first //result is optional, may not exist
myArray.last

secondArray.append(20)//this a method, so it uses parens as a property

secondArray //has only a single element, added at end by default

myArray.insert(100, atIndex: 2)//first tell it what, then tell it where, remember to subtract one
myArray.count
myArray.insert(50, atIndex: myArray.count - 1)//it becomes the fifth of now7

myArray.isEmpty //Bool for is empty
stringArray.isEmpty

myArray.removeAtIndex(2)
myArray[1] = 40
myArray
myArray.removeAtIndex(2)

for i in myArray
{
    
//    if i == 100{
//        println("Bingo")
//    }else
//    println("the value is \(i)")
//}