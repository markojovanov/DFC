import UIKit

public class TabController : UITabBarController {
    public override func viewDidLoad() {
        let registerViewController = RegisterViewController.create()
        let testVC = UIViewController()
        insertTabBars(viewControllers: [registerViewController,testVC])
    }
    private func insertTabBars(viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
}

