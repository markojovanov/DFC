import UIKit

class CollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let titleCell = ["Загуба на килограми","2","3","4"]
    let subtitleCell = ["Фокус на кардио вежби и тренинг со голем интензитет","2","3","4"]
    @IBOutlet var titleLabel: DFCLabel! {
        didSet {
            titleLabel.configure(title: "Која е твојата цел?")
        } 
    }
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.titleCellLabel.text = titleCell[indexPath.item]
        cell.subtitleCellLabel.text = subtitleCell[indexPath.item]
        cell.layer.cornerRadius = 18
        cell.backgroundColor = .cyan
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.black.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 350, height: 100)
    }
}
