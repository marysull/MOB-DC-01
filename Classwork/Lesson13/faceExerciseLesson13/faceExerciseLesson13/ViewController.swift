//
//  ViewController.swift
//  faceExerciseLesson13
//
//  Created by Mary Sullivan on 2/9/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mouthHeight: NSLayoutConstraint!

    @IBAction func smileMouthHeight(sender: AnyObject) {
    }
    
    @IBAction func smile(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: {
            self.mouthHeight.constant = 320
        })
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

