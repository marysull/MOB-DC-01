// Playground - noun: a place where people can play

import UIKit

//    class FibonacciAdder {
//var indexOfFibonacciNumber = 0, current = 0, next = 0, result = 0
func fibonacciNumberAtIndex(indexOfFibonacciNumber:Int) ->Int {
    var place = indexOfFibonacciNumber, current = 0, next = 1, result = 0
    for index in 0...place {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
    }
    return result
}
//}

fibonacciNumberAtIndex(2)
fibonacciNumberAtIndex(3)
fibonacciNumberAtIndex(5)
fibonacciNumberAtIndex(9)
fibonacciNumberAtIndex(10)

