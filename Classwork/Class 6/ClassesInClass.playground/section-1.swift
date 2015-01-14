// Playground - noun: a place where people can play

import UIKit
// Defining a class requires a cap letter
class Animal {
    var numberOfLegs: Int
    var hasFur = false
    var noise = "AAAHHH"
    init(legs: Int, hasFur: Bool) {
        self.numberOfLegs = legs
        self.hasFur = hasFur
    }
    func speak() {
        println(self.noise)
    }
}

//Instantiating a new class (instance or object)
var tedi = Animal(legs: 2, hasFur: false)
tedi.hasFur = false
tedi.speak()

tedi.numberOfLegs = 2
println(tedi.numberOfLegs)

var ena = Animal(legs: 4, hasFur: true)
ena.hasFur = true
ena.numberOfLegs = 4

