//
//  AddViewController.swift
//  tableViewDemoLesson10
//
//  Created by Mary Sullivan on 1/28/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampus(campusName: String) //this sets the protocol that bridges the two VCs.
}

class AddViewController: UIViewController {
    
    //field for entering new campus
    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: Campus? //This sets the delegate as Campus protocol. It's optional bc not required if you get here from another place.

    //this sets the button that sends the text to the first VC.
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampus(addTextBox.text)//this is action based
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
