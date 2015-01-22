// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Flight {
    var wings: Bool {get set} //so we can pull/write property, has to exist
    var beakSize: Int {get set}
    func canFly(animal: Animal) -> Bool
}

protocol Talk {
    func speak() -> String
}

class Penguin:Animal, Flight {//adding Animal means it's subclass
    var wings = true //has to be specified bc it's in protocol
    var beakSize = 6
    func canFly(animal: Animal) ->Bool{
        return false
    }
}

class Animal {
    var legs: Int
    var fur: Bool = true
    var hasClaws: Bool
    
    init (hasClaws: Bool) {
        self.hasClaws = hasClaws //it's this way so that Bool for claws required, bc it's inside the parens
        self.legs = 4//this makes legs always equal 4 but legs not required
        //whether you refer to Class property
    }
    
    func speak() {
    println("Hello world")
    }
    
    func describeAnimal() {
        println("This animal has \(self.legs) legs")
    }
    
}
class Human:Animal, Talk {
    func speak() ->String {
    return "hello world"
}
}


class Dog: Animal {
//
//    override var fur: Bool { //to override instance property
//        get {
//            //return whatever the fur variable is set at
//            //you can also set to true or false
//            return super.fur
//        }
//        set {
//            super.fur = newValue
//            //override the inherited property to the new value set by the sub class. newValue is temporary variable--use this syntax. Xcode knows it
//        }
    }

    var tedi = Animal(hasClaws: true)
    var ena = Dog(hasClaws: true)
    ena.speak()
 var skippy = ena
ena.legs
skippy.legs = 5
ena.legs

func doesAnimalHaveClaws(passinganimal: Animal) -> Bool {
    return passinganimal.hasClaws
    //this is polymorphism
}
let tedi1 = Animal(hasClaws: true)
doesAnimalHaveClaws(tedi1)
doesAnimalHaveClaws(ena)




    
//
//    override func speak() {
//        //this replaces class method
//        //super.method also runs the method inherited from the class. 
//        super.speak()
//    println("Woof woof")
//    }


struct Rectangle {
    var width: Int //no default values
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }

}

let myRectangle = Rectangle(width: 50, height: 100)//all properties must be called

var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width //shows the value of myRectangle
myRectangle.getArea()