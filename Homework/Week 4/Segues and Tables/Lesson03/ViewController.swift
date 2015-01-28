import UIKit

class ViewController: UIViewController {
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */

    @IBOutlet weak var swipeLabel: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
         initiateModalSwipeRight()
        tapButtonTableVC()
    }
    
    func initiateModalSwipeRight() {
       
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")//sets action
        swipeR.direction = UISwipeGestureRecognizerDirection.Right//sets direction
        self.swipeLabel.addGestureRecognizer(swipeR)//names action area
    }
    func swipedRight(sender: UISwipeGestureRecognizer) {
        self.performSegueWithIdentifier("showSecondVC", sender: self)
        //defines action on swipe
    }
//    func initiateSegueTap() {
//        let tapTableVC = UISwipeGestureRecognizer(target: self, action: "tapOnce:")//sets gesture. 1 tap is default
//        self.buttonTableVC.addGestureRecognizer(tapTableVC)//assigns to button
//    }
//    func tapButtonTableVC() {
//        self.performSegueWithIdentifier("showTableVC", sender: self)//calls the named seque
//    }
    
    @IBAction func buttonTableVC(sender: UIButton) {
        let tapTableVC = UITapGestureRecognizer() //sets gesture. 1 tap is default
        self.view.addGestureRecognizer(tapTableVC)//assigns to button
    }
    func tapButtonTableVC() {
        self.performSegueWithIdentifier("showTableVC", sender: self)//calls the named seque
    }
    
}
    