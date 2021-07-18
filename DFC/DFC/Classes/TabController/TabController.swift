import UIKit

public class TabController : UITabBarController {
    public override func viewDidLoad() {
        let registerViewController = RegisterViewController.create()
        let loginViewController = LoginViewController.create()
        insertTabBars(viewControllers: [registerViewController,loginViewController])
    }
    private func insertTabBars(viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
}

