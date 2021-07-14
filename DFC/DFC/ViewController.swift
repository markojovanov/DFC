import UIKit

class ViewController: UIViewController {
    @IBOutlet var NameTextField: DFCTextField!{
        didSet{
            NameTextField.configure(placeHolder: "Име")
        }
    }
    @IBOutlet var EmailTextField: DFCTextField! {
        didSet{
            EmailTextField.configure(placeHolder: "Емаил")
        }
    }
    
    @IBOutlet var PasswordTextField: DFCTextField!{
        didSet{
            PasswordTextField.configure(placeHolder: "Лозинка")
        }
    }
    @IBOutlet var ConfrimPasswordTextField: DFCTextField! {
        didSet{
            ConfrimPasswordTextField.configure(placeHolder: "Потврди лозинка")
        }
    }
    
    @IBOutlet var TestButton: DFCButton! {
        didSet {
            TestButton.configure(title: "Најави се",
                                 color: .white,
                                 backgroundColor: .init(red: 0.37, green: 0.18, blue: 0.67, alpha: 1)
                                 ,cornerRadius: 18)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

