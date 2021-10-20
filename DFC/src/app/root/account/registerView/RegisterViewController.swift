import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
    public static func create() -> UIViewController {
        let bundle = Bundle(for: RegisterViewController.self)
        let controller = UIStoryboard(name: "RegisterViewController", bundle: bundle).instantiateInitialViewController() as! RegisterViewController
        controller.tabBarItem = UITabBarItem(title: "Register", image: UIImage(named: "Register"), tag: 0)
        return controller
    }
    @IBOutlet var AlreadyRegisterLabel: DFCLabel! {
        didSet {
            AlreadyRegisterLabel.configure(title: Texts.alreadyRegistered)
        }
    }
    @IBOutlet var RegisterLabel: DFCLabel! {
        didSet{
            RegisterLabel.configure(title: "РЕГИСТРИРАЈ СЕ")
        }
    }
    @IBOutlet var LoginButton: DFCButton! {
    didSet {
        LoginButton.configure(title: "Најави се",
                             color: .link,
                             backgroundColor: .init(red: 0, green: 0, blue: 0, alpha: 0),
                             cornerRadius: 0)
        }
    }
    @IBOutlet var NameTextField: DFCTextField!{
        didSet {
            NameTextField.configure(placeHolder: "Име")
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
    @IBOutlet var ConfrimPasswordTextField: DFCTextField! {
        didSet {
            ConfrimPasswordTextField.configure(placeHolder: "Потврди лозинка",
                                               secureTextEntry: true)
        }
    }
    @IBOutlet var RegisterButton: DFCButton! {
        didSet {
            RegisterButton.configure(title: "Креирај профил")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
        tabBarItem = UITabBarItem(title: "Register", image: UIImage(named: "Register"), tag: 0)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        hideKeyboard()
    }
    private func setUpDelegates() {
        NameTextField.delegate = self
        EmailTextField.delegate = self
        PasswordTextField.delegate = self
        ConfrimPasswordTextField.delegate = self
    }
    private func hideKeyboard() {
        NameTextField.endEditing(true)
        EmailTextField.endEditing(true)
        PasswordTextField.endEditing(true)
        ConfrimPasswordTextField.endEditing(true)
    }
}


