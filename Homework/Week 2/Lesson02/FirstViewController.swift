//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
  
    @IBOutlet weak var giveName: UITextField!

    
    @IBOutlet weak var giveAge: UITextField!

    func nameAgeGreeting() -> String {
        return "Hello \(giveName.text), you are \(giveAge.text) years old!   "
    }
    func ageAbilitiesBasic() -> String {
        if giveAge.text.toInt() > 21 {
            return "You can drink  "
        }else if giveAge.text.toInt() >= 18 {
            return " You can vote"
        }else if giveAge.text.toInt() >= 16 {
            return "You can drive  "
        } else {
        return "Grow up!  "
        }
    }
    
    func ageAbilitiesExtended() -> String {
        if giveAge.text.toInt() >= 21 {
           return "You can drive, vote, and drink, but not at the same time!"
        }else if giveAge.text.toInt() >= 18 && giveAge.text.toInt() < 21 {
            return "You can drive and vote!"
        }else if  giveAge.text.toInt() > 16 && giveAge.text.toInt() < 18 {
            return "You can drive."
        } else { return ""
            
        }
    }

    @IBOutlet weak var textDisplay: UILabel!
    
    @IBAction func generateText(sender: AnyObject) {
            var basicGreeting:String = "Hello, world!     "
            textDisplay.text = "\(basicGreeting)" + nameAgeGreeting() + ageAbilitiesBasic() + ageAbilitiesExtended()
            textDisplay.hidden = false
    }
        
  
}