//
//  FirstViewController.swift
//  View demos
//
//  Created by Mary Sullivan on 1/21/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var mySquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwipeSquareRight(sender: UISwipeGestureRecognizer) {
        mySquare.backgroundColor = UIColor.redColor()
        UIView.animateWithDuration(1.5, animations:{
            self.mySquare.backgroundColor = UIColor.redColor()
            self.mySquare.alpha = 0.5
        })
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
