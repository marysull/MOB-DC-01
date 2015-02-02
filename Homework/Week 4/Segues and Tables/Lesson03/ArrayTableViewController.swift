
import UIKit



class ArrayTableViewController: UITableViewController {
    
    /*
        TODO five: create an array of to do tasks inside this class
        TODO six: populate the table view with the contents of the newly created array.
        Bonus: Add delete cell on swipe feature.
    */
    //create the array
    var toDoList = ["pay Ikatu", "pay electrician", "book flights", "make dinner reservation", "do returns"]

//override func viewDidLoad() {
//    super.didReceiveMemoryWarning()
//    //dispose of any resources that can be recreated.
//}
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        // Add code to populate cells
        cell.textLabel?.text = self.toDoList[indexPath.row]
        return cell
    }
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.toDoList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
}
