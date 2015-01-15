//
//  ViewController.swift
//  Animal-Lesson07
//
//  Created by Mary Sullivan on 1/14/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //best practice is outlets at top and

    @IBOutlet weak var animalName: UITextField!
    
    @IBOutlet weak var animalResults: UILabel!
    
    @IBOutlet weak var animalAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func catCreator(sender: AnyObject) {
        var cat = Animal()
        cat.name = animalName.text
        cat.age = animalAge.text.toInt()!
        cat.species = "cat"
        animalResults.hidden = false
        animalResults.text = cat.stringRepresentation()
    }

    @IBAction func dogCreator(sender: AnyObject) {
        var dog = Animal() //creates new instance
        dog.name = animalName.text //sets name to text in namebox
        dog.age = animalAge.text.toInt()!
        dog.species = "dog" //hard coding
        animalResults.hidden = false
        animalResults.text = dog.stringRepresentation()
    }
    
    
}

