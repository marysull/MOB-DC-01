//
//  ViewController.swift
//  arrayPracticeLesson10
//
//  Created by Mary Sullivan on 1/28/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

protocol addTaskVCDelegate {
    func addTaskVCDismissed(newItem: String)
}

class ViewController: UIViewController {
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    var delegate: addTaskVCDelegate?
    
    
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var textToAdd: UITextField!
    var newItem:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.textToAdd.text.isEmpty {
            println("Your text field is empty, enter something")
            textField.resignFirstResponder()
            self.errorMessage.hidden = false
        } else {
            self.errorMessage.hidden = true
        }
        return true
    }
    @IBAction func addTextButton(sender: AnyObject) {
        newItem = textToAdd.text
        self.delegate?.addTaskVCDismissed(newItem)
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func addItemToList() {
//        toDoArray.append("call hubby")
//    }
//    func printListByItem() {
//        for i in toDoArray {
//            println("\(i)")
//        }
//    }
    


}

