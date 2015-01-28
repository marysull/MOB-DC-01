//
//  SecondViewController.swift
//  Table views and scenes
//
//  Created by Mary Sullivan on 1/26/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func goBackToFirstVC(sender: UIButton) {self.navigationController?.popViewControllerAnimated(true)
        //this takes us back one view. Pop goes one page. There is another for going to root
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
