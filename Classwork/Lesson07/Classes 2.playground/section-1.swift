// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Vehicle {
    var wheels = 0
    var name:String = ""
    var color: String = ""
    var numberOfSeats = 0
    var numberOfAxles = 0

    func go() {
        println("Vroom vroom")
    }
    
    func inspectCar() {
        println("This car has \(self.numberOfSeats) seats and \(self.numberOfAxles) axles") //get in the habit of using self. This distinguishes it from init variabiles
    }
    class func aboutVehicles () {
        println("Cars are awesome") //called a Class Methord. Allows you do for example to get definitions about classes, not work with specific instances.
    }
}

var myCar = Vehicle() //This is an instance of a class, or an object.
myCar.wheels = 4
myCar.name = "Car"
myCar.color = "green"
myCar.numberOfSeats = 4
myCar.numberOfAxles = 2

myCar.inspectCar()//calling a method differs from funciton. Have to have class before it
Vehicle.aboutVehicles()

