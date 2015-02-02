//
//  ViewController.swift
//  MaryDelegationPractice
//
//  Created by Mary Sullivan on 2/2/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataEnteredDelegate {
    
    
    @IBOutlet weak var dataLabel: UILabel! = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidEnterInformation(info: NSString) {
        dataLabel.text = info
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier = "showSecondVC" {
        let secondVC:SecondViewController = seque.destinationViewController as SecondViewController
            secondVC.delegate = self 
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

