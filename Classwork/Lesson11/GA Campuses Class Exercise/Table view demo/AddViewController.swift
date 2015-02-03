//
//  AddViewController.swift
//  Table view demo
//
//  Created by Tedi Konda on 1/28/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//
//to add a delegate to a text field
// 1. add UITextFieldDelegate protocol
// 2. connect Text Field outlet
// 3. tie textField.delegate = self
// 4. add the text field method

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addTextBox: UITextField!
    @IBOutlet var errorMesage: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func pressPostButton(sender: AnyObject) {
        //Step 1 notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    
    //notification 3 steps:
    //1. Post notification "unhideHiddenLablels
    //2. Listen in VDL add observer (is a get)
    //3. Execute/Run function defined in selector
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.hiddenLabel.hidden = true
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "unhideCurrentLabels:",//function that runs
            name: "unhideHiddenLabels",//label
            object: nil)//nil can be data.
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textHasChanged",
            name: UITextFieldTextDidChangeNotification,
            object: nil)

        // Do any additional setup after loading the view.
    }
    func unhideCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("triggered unhideHiddenLabels notification")
    }
    
    func textHasChanged(notification: NSNotification) {
        println("Hooray, text has changed")
    }//this is system defined function so no need for us to post.
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
            println("Your text field is empty, enter something")
            textField.resignFirstResponder()
            self.errorMesage.hidden = false
        } else {
            self.errorMesage.hidden = true
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
