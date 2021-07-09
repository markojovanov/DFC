import UIKit

class ViewController: UIViewController {
    @IBOutlet var TestButton: DFCButton! {
        didSet {
            TestButton.configure(title: "Najavi se",
                                 color: .white,
                                 backgroundColor: .init(red: 0.37, green: 0.18, blue: 0.67, alpha: 1)
                                 ,cornerRadius: 18)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

