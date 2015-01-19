////
////  ThirdViewController.swift
////  Lesson02
////
////  Created by Rudd Taylor on 9/28/14.
////  Copyright (c) 2014 General Assembly. All rights reserved.
////
//
import UIKit

class ThirdViewController: UIViewController {
///*
//    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
//
//*/
    
    @IBOutlet weak var enterNumberField: UITextField!
    
    
    @IBOutlet weak var showEvenOrNot: UILabel!
 
    
    @IBAction func pressButton(sender: AnyObject){
        if enterNumberField.text.toInt()! % 2 == 0 && enterNumberField.text.toInt()! != 0 {
            showEvenOrNot.text = "is even"
        }
        else {
            showEvenOrNot.text = "is not even"
        }
    }
}