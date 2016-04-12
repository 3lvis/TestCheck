import UIKit

class RootController: UIViewController {
    lazy var textField: UITextField = {
        let textField = UITextField(frame: UIScreen.mainScreen().bounds)
        textField.textColor = UIColor.whiteColor()
        textField.textAlignment = .Center
        textField.enabled = false

        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.textField)
        self.view.backgroundColor = UIColor.blackColor()

        if TestCheck.isTesting {
            self.textField.text = "Testing enabled"
        } else {
            self.textField.text = "Testing disabled"
        }
    }
}
