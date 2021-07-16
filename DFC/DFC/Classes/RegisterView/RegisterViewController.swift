import UIKit

class RegisterViewController: UIViewController {
    public static func create() -> UIViewController {
        let bundle = Bundle(for: RegisterViewController.self)
        let controller = UIStoryboard(name: "RegisterViewController", bundle: bundle).instantiateInitialViewController() as! RegisterViewController
        return controller
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
            NameTextField.configure(placeHolder: "Име",
                                    secureTextEntry: false,
                                    fontColor: .darkGray)
        }
    }
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
    @IBOutlet var ConfrimPasswordTextField: DFCTextField! {
        didSet {
            ConfrimPasswordTextField.configure(placeHolder: "Потврди лозинка",
                                               secureTextEntry: true,
                                               fontColor: .darkGray)
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
        tabBarItem = UITabBarItem(title: "Register", image: UIImage(named: "Home"), tag: 0)
    }
}


