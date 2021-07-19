import UIKit

class RoutineSetterController: UIViewController  {
    //Delete func create - > Not needing TabBarController
    public static func create() -> UIViewController {
        let bundle = Bundle(for: RoutineSetterController.self)
        let controller = UIStoryboard(name: "RoutineSetterController", bundle: bundle).instantiateInitialViewController() as! UINavigationController
        return controller
    }
    @IBOutlet var GoalLabel: DFCLabel! {
        didSet {
            GoalLabel.configure(title: "Која е твојата цел?")
        }
    }
    @IBOutlet var WeightLossButton: DFCSetterButton! {
        didSet {
            WeightLossButton.configure(title: "Загуба на килограми\nФокусирање на кардио вежби и вежби со голем интензитет")
        }
    }
    @IBOutlet var StayFitButton: DFCSetterButton! {
        didSet {
            StayFitButton.configure(title: "Одржување на форма\nФокусирање на склоп од повеќе кардио вежби и вежби за сила")
        }
    }
    @IBOutlet var GainMusclesButton: DFCSetterButton! {
        didSet {
            GainMusclesButton.configure(title: "Добивање мускули\nФокусирање на добивање на мускулна маса преку зголемен број повторувања")
        }
    }
    @IBOutlet var AthleteButton: DFCSetterButton! {
        didSet {
            AthleteButton.configure(title: "Тренирај како атлета\nФокус на добивање максимум од твоето тело")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
        //Delete line 15 -> Not needing TabBarController
        tabBarItem = UITabBarItem(title: "RoutineSetter", image: UIImage(named: "Register"), tag: 2)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Back"), style: .plain, target: self, action: nil)
        let progressBarView = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 45))
        progressBarView.backgroundColor = .white
        let progressBar = UIProgressView(frame: CGRect(x: 10, y: 20, width: 180,height: 35))
        progressBar.progress = 0.2;
        progressBarView.addSubview(progressBar)
        self.navigationItem.titleView = progressBarView;
    }
}
