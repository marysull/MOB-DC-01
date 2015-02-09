//
//  ViewController.swift
//  ios delegates lesson 11
//
//  Created by Mary Sullivan on 2/2/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

//to add a delegate to a text field
// 1. add UITextFieldDelegate protocol
// 2. connect Text Field outlet
// 3. tie textField.delegate = self
// 4. add the text field method

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
//drag from table view to yellow button twice, once for each above for the table view delegate and source.
    //for text field use to get keyboard to go away, UITextFieldDelegate give you many options. Has delegate built in.
    
    var gaCampuses: [String] = ["NY", "DC", "Atlanta"]
    
    @IBOutlet weak var campusesTable: UITableView!
    
    @IBOutlet weak var stuffTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        stuffTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("return key pressed")
        textField.resignFirstResponder()
        return true
    }
    
    //usually we have to override functions but we do not bc the UITableViewDelegate and UITableViewSource are protocols to which these conform.
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as UITableViewCell
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell Identifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        if indexPath.row & 2 == 0 {
            //set cell background color
            cell.backgroundColor = UIColor.redColor()
            //set cell colo
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
    
    return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

