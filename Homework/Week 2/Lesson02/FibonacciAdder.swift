//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Mary Sullivan on 1/18/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
    var indexOfFibonacciNumber = 0, current = 0, next = 0, result = 0
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
}