import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var EmailTextField: DFCTextField! {
        didSet {
            EmailTextField.configure(placeHolder: "Емаил",
                                     secureTextEntry: false,
                                     fontColor: .darkGray)
        }
    }
    @IBOutlet var PasswordTextField: DFCTextField! {
        didSet {
            PasswordTextField.configure(placeHolder: "Лозинка",
                                        secureTextEntry: true,
                                        fontColor: .darkGray)
        }
    }
    @IBOutlet var LoginButton: DFCButton! {
    didSet {
        LoginButton.configure(title: "Регистрирај се",
                             color: .link,
                             backgroundColor: .init(red: 0, green: 0, blue: 0, alpha: 0),
                             cornerRadius: 0)
        }
    }
    @IBOutlet var BigLoginButton: DFCButton! {
        didSet {
            BigLoginButton.configure(title: "Најави се",
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
