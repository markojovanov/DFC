import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    public static func create() -> UIViewController {
        let bundle = Bundle(for: LoginViewController.self)
        let controller = UIStoryboard(name: "LoginViewController", bundle: bundle).instantiateInitialViewController() as! LoginViewController
        controller.tabBarItem = UITabBarItem(title: "Login", image: UIImage(named: "Login"), tag: 0)
        return controller
    }
    @IBOutlet var LoginLabel: DFCLabel! {
        didSet {
            LoginLabel.configure(title: "НАЈАВИ СЕ")
        }
    }
    @IBOutlet var NotRegistered: DFCLabel! {
        didSet {
        NotRegistered.configure(title: "Немаш кориснички профил?")
    }
}
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
    @IBOutlet var RegisterButton: DFCButton! {
    didSet {
        RegisterButton.configure(title: "Регистрирај се",
                             color: .link,
                             backgroundColor: .init(red: 0, green: 0, blue: 0, alpha: 0),
                             cornerRadius: 0)
        }
    }
    @IBOutlet var BigLoginButton: DFCButton! {
        didSet {
            BigLoginButton.configure(title: "Најави се")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
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
