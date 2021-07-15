import UIKit

class ViewController: UIViewController {
    @IBOutlet var LoginButton: DFCButton! {
    didSet {
        LoginButton.configure(title: "Најави се",
                             color: .link,
                             backgroundColor: .init(red: 0, green: 0, blue: 0, alpha: 0),
                             cornerRadius: 0)
    }
}
    @IBOutlet var NameTextField: DFCTextField!{
        didSet{
            NameTextField.configure(placeHolder: "Име",
                                    secureTextEntry: false)
        }
    }
    @IBOutlet var EmailTextField: DFCTextField! {
        didSet{
            EmailTextField.configure(placeHolder: "Емаил",
                                     secureTextEntry: false)
        }
    }
    
    @IBOutlet var PasswordTextField: DFCTextField! {
        didSet{
            PasswordTextField.configure(placeHolder: "Лозинка",
                                        secureTextEntry: true)
        }
    }
    @IBOutlet var ConfrimPasswordTextField: DFCTextField! {
        didSet{
            ConfrimPasswordTextField.configure(placeHolder: "Потврди лозинка",
                                               secureTextEntry: true)
        }
    }
    @IBOutlet var BigLoginButton: DFCButton! {
        didSet {
            BigLoginButton.configure(title: "Креирај профил",
                                 color: .white,
                                 backgroundColor: .init(red: 0.37, green: 0.18, blue: 0.67, alpha: 1)
                                 ,cornerRadius: 18)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
    }
}


