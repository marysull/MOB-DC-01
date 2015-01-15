// Playground - noun: a place where people can play

import UIKit

class Animal {
    var species:String = "mammal"
    var name:String = "cow"
    var age:Int = 3
    
//    func stringRepresentation() -> String {
//        return "The animal is a \(self.species), its name is \(self.name), and it is \(self.age) years old."
//    }//it was important to specify the return type of string instead of using println so you can return. println only returns results to debugger.
    func speak() {
        println("AHHHHH")
    }

}

class Dog: Animal { //this is an example of a subclass
//    override var legs = 4
    init(legs) {
        
    }
    var legs = 4
    var isSmart = true
    override func speak() { //can override methods but not properties
    println("Woof!")
    }
}

var doggie = Dog(legs: 5)
doggie.legs
doggie.speak()
doggie.isSmart
Doggie.isSmart = false

//func printAnimalName(animal: Animal) {
//    println("Animal's name is \(animal.name)")
//}//when using functions {not methods), you can pass all the attributes of the class and all will. That's why we're not using self. Using animal.Animal is the parameter)
//

//
//var doggie = Animal() //creating new instance
//doggie.name = "Ena"
//printAnimalName(doggie)


var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
