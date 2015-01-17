//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    @IBOutlet weak var enterNumberField: UITextField!
    
    
    @IBOutlet weak var sumOfNumbersLabel: UILabel!

    var sum = 0
    
    @IBAction func addButton(sender: AnyObject) {
        let newNumber = enterNumberField.text.toInt()
        sum += newNumber!
        sumOfNumbersLabel.text = "\(sum)"
    }
    
    
}
