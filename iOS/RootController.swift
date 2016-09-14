import UIKit

class RootController: UIViewController {
    lazy var textField: UITextField = {
        let textField = UITextField(frame: UIScreen.main.bounds)
        textField.textColor = UIColor.white
        textField.textAlignment = .center
        textField.isEnabled = false

        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.textField)
        self.view.backgroundColor = UIColor.black

        if TestCheck.isTesting {
            self.textField.text = "Testing enabled"
        } else {
            self.textField.text = "Testing disabled"
        }
    }
}
