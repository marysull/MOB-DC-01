//
//  Animal.swift
//  Animal-Lesson07
//
//  Created by Mary Sullivan on 1/14/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import Foundation

class Animal {
    var species:String = "mammal"
    var name:String = "cow"
    var age:Int = 3

    func stringRepresentation() -> String {
        return "The animal is a \(self.species), its name is \(self.name), and it is \(self.age) years old."
    }//it was important to specify the return type of string instead of using println so you can return. println only returns results to debugger.
}