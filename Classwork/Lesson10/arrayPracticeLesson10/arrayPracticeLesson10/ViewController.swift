//
//  ViewController.swift
//  arrayPracticeLesson10
//
//  Created by Mary Sullivan on 1/28/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var toDoArray = ["take out trash", "book flights", "write dues check", "buy milk", "have dessert", "get to bed early"]
    
    @IBOutlet weak var textToAdd: UITextField!
    var newText = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        toDoArray
//        printListByItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func addItemToList() {
        toDoArray.append("call hubby")
    }
    func printListByItem() {
        for i in toDoArray {
            println("\(i)")
        }
    }
    
    @IBAction func addTextButton(sender: AnyObject) {
    }

}

