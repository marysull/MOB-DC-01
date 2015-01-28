//
//  ViewController.swift
//  Table views and scenes
//
//  Created by Mary Sullivan on 1/26/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeView: UIView!
    
    //this is an example of how to add view controllers programmmatically. Items that will always stay on the scene can be created from storyboard. Things that might only appear sometimes or be removed are created programmatically.

    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()//does two functions in a single move
        initiateDoubleTapOnRedBox()

    }
    
    func initiateRightSwipeOnRedBox() {
        //instantiate a gesture object. Doing it all here for best practice.
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")//instantiation of gesture, set options. Quotes and colon are required. Target is always self for our purposes.
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right//options of gesture
        self.swipeView.addGestureRecognizer(swipeR)
    }
//    
    func swipedRight(sender: UISwipeGestureRecognizer) {
//        self.resultsLabel.text = "You swiped right!"//sender type alwas the say as with the target, above
        self.performSegueWithIdentifier("showSecondVC", sender: self)
        //takes us to the seque that brings up SecondVC
    }
    
    
    func initiateDoubleTapOnRedBox() {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        
        dTap.numberOfTapsRequired = 2
        
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    func doubleTapped(sender: UITapGestureRecognizer) {
//        UIView.animateWithDuration(1.0, animations: {
//         
//            self.swipeView.backgroundColor = UIColor.blueColor()
//        })
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController //typecast is as the view controller, uses "as"
        self.presentViewController(thirdVC, animated: true, completion: nil)
        //completion is for additional logic/function you can execute upon calling the VC. Animate is true bc we want users to realize the change.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

