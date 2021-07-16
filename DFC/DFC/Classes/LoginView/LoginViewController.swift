import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var EmailTextField: DFCTextField! {
        didSet {
            EmailTextField.configure(placeHolder: "Емаил")
        }
    }
    @IBOutlet var PasswordTextField: DFCTextField! {
        didSet {
            PasswordTextField.configure(placeHolder: "Лозинка",
                                        secureTextEntry: true)
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
        setUpDelegates()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        hideKeyboard()
    }
    private func setUpDelegates() {
        EmailTextField.delegate = self
        PasswordTextField.delegate = self
    }
    private func hideKeyboard() {
        EmailTextField.endEditing(true)
        PasswordTextField.endEditing(true)
    }
}
