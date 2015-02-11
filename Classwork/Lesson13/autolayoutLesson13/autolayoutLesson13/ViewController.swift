//
//  ViewController.swift
//  autolayoutLesson13
//
//  Created by Mary Sullivan on 2/9/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var verticalSpacingBtwPurpleGhostPacMan: NSLayoutConstraint!
    
    
    @IBAction func IncreaseDistanceBetwPacmanAndGhost(sender: AnyObject) {
        self.verticalSpacingBtwPurpleGhostPacMan.constant = 80
        UIView.animateWithDuration(0.5, animations: {
            self.view.layoutIfNeeded()
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

