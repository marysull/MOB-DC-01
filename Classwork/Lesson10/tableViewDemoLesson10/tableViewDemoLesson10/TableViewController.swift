//
//  TableViewController.swift
//  tableViewDemoLesson10
//
//  Created by Mary Sullivan on 1/28/15.
//  Copyright (c) 2015 Mary Sullivan. All rights reserved.
//

//to add a delegate to a text field
// 1. add UITextFieldDelegate protocol
// 2. connect Text Field outlet
// 3. tie textField.delegate = self
// 4. add the text field method

import UIKit

class TableViewController: UITableViewController, Campus { //Campus protocol is added here
    var gaCampuses = ["Washington DC", "New York", "Hong Kong", "Los Angeles", "Atlanta"] //campus array
    
    //this is the function that adds the campus to the table view. It's called on the delegate on other VC.
    func addCampus(campusName: String) {
        self.gaCampuses.append(campusName)
    }

    //this is the Add Campus button in the Nav Controller. And addVC.delegate ties the two VCs together. Brings you to other VC and then brings the value you add back to this view.
    @IBAction func presentAddCampus(sender: AnyObject) {
        var addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC") as AddViewController
        addVC.delegate = self
        self.presentViewController(addVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    /*
    6. Return the array size under the tableView that has the numberOfRowsInSection paremeter. Ex: */
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Sets the number of cells in the table to equal the number of items in our array
        return self.gaCampuses.count
    }
    /*
    7. Update the tableView method with the cellForRowIndexPath paremeter to update all the cells with the array data. ex:
    */
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Sets each cell to equal each item in the array
        cell.textLabel?.text = self.gaCampuses[indexPath.row]//this is the key row, a loop returning the number of row and 
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.gaCampuses.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
