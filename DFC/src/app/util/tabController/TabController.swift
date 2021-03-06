import UIKit

public class TabController : UITabBarController {
    
    public override func viewDidLoad() {
        let registerViewController = RegisterViewController.create()
        let loginViewController = LoginViewController.create()
        //Delete line 8 -> Not needing TabBarController
        let routineSetterController = CollectionView.create()
        let progressViewController = ProgressViewController.create()
        insertTabBars(viewControllers: [loginViewController,registerViewController,routineSetterController,progressViewController])
    }
    
    private func insertTabBars(viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
}

