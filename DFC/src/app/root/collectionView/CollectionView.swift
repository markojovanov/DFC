import UIKit

class CollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    public static func create() -> UIViewController {
        let bundle = Bundle(for: CollectionView.self)
        let controller = UIStoryboard(name: "RoutineSetterController", bundle: bundle).instantiateInitialViewController() as! UINavigationController
        controller.tabBarItem = UITabBarItem(title: "RoutineSetter", image: UIImage(named: "Register"), tag: 2)
        return controller
    }
    let progressBar = UIProgressView(frame: CGRect(x: 10, y: 20, width: 180,height: 35))
    var setterModel = SetterModel()
    @IBOutlet var titleLabel: DFCLabel! {
        didSet {
            titleLabel.configure(title: setterModel.titleLabel)
        } 
    }
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setterModel.set()
        view.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "Back"),
                                                           style: .plain,
                                                           target: self,
                                                           action: nil)
        let progressBarView = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 45))
        progressBarView.backgroundColor = .white
        progressBar.progress = 0.2;
        progressBarView.addSubview(progressBar)
        self.navigationItem.titleView = progressBarView;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        print(setterModel.titleCell)
        return setterModel.titleCell.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.titleCellLabel.text = setterModel.titleCell[indexPath.item]
        cell.subtitleCellLabel.text = setterModel.subtitleCell[indexPath.item]
        cell.layer.cornerRadius = 5
        cell.backgroundColor = .cyan
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.black.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if setterModel.setter == "Routine" {
            setterModel.setter = "Gender"
        } else if setterModel.setter == "Gender" {
            setterModel.setter = "Frequency"
        } else if setterModel.setter == "Frequency" {
            setterModel.setter = "Characteristics"
        }
        let selectedSetter = setterModel.titleCell[indexPath.item]
        print(selectedSetter)
        progressBar.progress = setterModel.progressUpdate;
        setterModel.set()
        collectionView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 100)
    }
}
