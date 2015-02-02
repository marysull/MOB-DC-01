//
//  SecondViewController.swift
//  MaryDelegationPractice
//
//  Created by Mary Sullivan on 2/2/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit
//protocol not inside the class!!
protocol DataEnteredDelegate {
    //set up delegate method
    func userDidEnterInformation(info: NSString)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField! = UITextField()
    //create delegate property within class, optional, set to nil
    var delegate:DataEnteredDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func sendData(sender: AnyObject) {
        if (delegate != nil){
            let information:String = dataTextField.text
            delegate!.userDidEnterInformation(information)
            self.navigationController?.popViewControllerAnimated(true)
        }
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
