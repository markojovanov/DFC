import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    static func create() -> UIViewController {
        let bundle = Bundle(for: LoginViewController.self)
        let controller = UIStoryboard(name: "LoginViewController",
                                      bundle: bundle)
            .instantiateInitialViewController() as! LoginViewController
        return controller
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var iconImage: DFCImageView!
    @IBOutlet var loginLabel: DFCLabel! {
        didSet {
            loginLabel.configure(title: Texts.logIn.uppercased())
        }
    }
    @IBOutlet var emailTextField: DFCTextField! {
        didSet {
            emailTextField.configure(placeHolder: Texts.email)
        }
    }
    @IBOutlet var PasswordTextField: DFCTextField! {
        didSet {
            PasswordTextField.configure(placeHolder: Texts.password,
                                        secureTextEntry: true)
        }
    }
    @IBOutlet var BigLoginButton: DFCButton! {
        didSet {
            BigLoginButton.configure(title: Texts.logIn)
        }
    }
    @IBOutlet var NotRegistered: DFCLabel! {
        didSet {
            NotRegistered.configure(title: Texts.notRegistered)
        }
    }
    
    @IBOutlet var RegisterButton: DFCButton! {
        didSet {
            RegisterButton.configure(title: Texts.alreadyRegistered,
                                     color: .white,
                                     backgroundColor: .init(red: 0, green: 0, blue: 0, alpha: 0),
                                     cornerRadius: 0)
        }
    }
    
    //MARK: - ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DFCHelpers.hexStringToUIColor(hex: "#38b6ff")
        setUpDelegates()
    }
    
    //MARK: - IBAction
    
    @IBAction func submitButton(_ sender: Any) {
        let bundle = Bundle(for: RegisterViewController.self)
        let controller = UIStoryboard(name: "RegisterViewController", bundle: bundle).instantiateInitialViewController() as! RegisterViewController
        controller.modalPresentationStyle = .overCurrentContext
        controller.modalTransitionStyle = .crossDissolve
        controller.hidesBottomBarWhenPushed = true
        definesPresentationContext = true
        present(controller, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        hideKeyboard()
    }
    
    //MARK: - Delegates
    
    private func setUpDelegates() {
        emailTextField.delegate = self
        PasswordTextField.delegate = self
    }
    private func hideKeyboard() {
        emailTextField.endEditing(true)
        PasswordTextField.endEditing(true)
    }
}
