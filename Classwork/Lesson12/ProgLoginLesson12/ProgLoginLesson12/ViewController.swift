//
//  ViewController.swift
//  ProgLoginLesson12
//
//  Created by Mary Sullivan on 2/9/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     //create a view to hold these elements, which is a subview of the view controller
        var loginView = UIView(frame: CGRect(x: 0, y: 18, width: self.width.viewController(), height: self.height.viewController()))
        loginView.backgroundColor = UIColor.whiteColor()
        loginView.autoresizingMask = UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.flexibleWidth
            self.view.addSubview(loginView)
//add a title label as a sub to view, spanning full width
        var titleLabel = UILabel(frame: CGRect(x: 0, y: 50, width: loginView.frame.width, height: 30))
        titleLabel.text = "Let's get started!"
        titleLable.textColor = UIColor.whiteColor()
        titleLabel.textAlignment = .Center
        titleLabel.backgroundColor = UIColor.greenColor()
        loginView.addSubview(titleLabel)
 //add a username textfield
        var usernameTextField = UITextField(frame: CGRect(x: 0, y: 100, width: loginView.frame.width, height: 30))
        
        loginView.addSubview(usernameTextField)
//add a password field
        var passwordTextField = UITextField(frame: CGRect(x: 0, y: 150, width: loginView.frame.width, height: 30))
        
        loginView.addSubview(passwordTextField)
        
//add a login button
        var loginBtn = UIButton(frame: CGRect(x: 0, y: 200, width: 30, height: 30)
            loginButton.addTarget(self, action: 
        
        
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

