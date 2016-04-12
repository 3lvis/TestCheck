import UIKit

class RootController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        if TestCheck.isTesting {
            self.view.backgroundColor = UIColor.redColor()
        } else {
            self.view.backgroundColor = UIColor.greenColor()
        }
    }
}
