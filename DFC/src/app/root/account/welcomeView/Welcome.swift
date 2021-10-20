import UIKit

class Welcome: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var logInButton: DFCButton! {
        didSet {
            logInButton.configure(
                title: Texts.logIn,
                color: .systemBlue,
                backgroundColor: UIColor.white.cgColor)
        }
    }
    @IBOutlet weak var registerButton: DFCButton!{
        didSet {
            registerButton.configure(title: Texts.registerIn,
                                     color: .white,
                                     backgroundColor: UIColor.systemBlue.cgColor)
        }
    }
    
    //MARK:- ViewController life cylce
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = DFCHelpers.hexStringToUIColor(hex: "#38b6ff")
    }
    
    //MARK: - IBActions
    
    @IBAction func logIn(_ sender: Any) {
        let loginViewController = LoginViewController.create()
        loginViewController.modalPresentationStyle = .fullScreen
        present(loginViewController, animated: true)
    }
    @IBAction func register(_ sender: Any) {
        let registerViewController = RegisterViewController.create()
        registerViewController.modalPresentationStyle = .fullScreen
        present(registerViewController, animated: true)
    }
}
