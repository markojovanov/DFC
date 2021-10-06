import UIKit
import SwiftChart

class ProgressViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    public static func create() -> UIViewController {
        let bundle = Bundle(for: ProgressViewController.self)
        let controller = UIStoryboard(name: "ProgressViewStoryboard", bundle: bundle).instantiateInitialViewController() as! UINavigationController
        controller.tabBarItem = UITabBarItem(title: "Progress", image: UIImage(named: "Register"), tag: 2)
        return controller
    }
    let progresModel = ProgressModel()
    let startingWeight = 0
    let currentWeight = 0
    let progressWeight = 0
    @IBOutlet weak var startingWeightLabel: DFCLabel! {
        didSet {
            startingWeightLabel.text = "\(startingWeight) kg\nПочетна тежина"
        }
    }
    @IBOutlet weak var currentWeightLabel: DFCLabel! {
        didSet {
            currentWeightLabel.text = "\(currentWeight) kg\nМоментална тежина"
        }
    }
    @IBOutlet weak var progressWeightLabel: DFCLabel! {
        didSet {
            progressWeightLabel.text = "+\(progressWeight) kg\nПромена"
        }
    }
    @IBOutlet weak var chartView: Chart!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Сподели",
                                                           style: .done,
                                                           target: self,
                                                           action: nil)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add,
                                                            target: self,
                                                            action: #selector(addWeight))
        navigationItem.title = "Прогрес"
        let chart = Chart(frame: CGRect(x: 0,
                                        y: 168,
                                        width: 414,
                                        height: 362))
        let series = ChartSeries([0, 6.5, 2, 8, 4.1, 7, -3.1, 10, 8])
        series.area = true
        chart.add(series)

        chartView = chart
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        settupChart()
    }
    private func settupChart() {

//        let data = [
//          (x: 0, y: 0),
//          (x: 3, y: 2.5),
//          (x: 4, y: 2),
//          (x: 5, y: 2.3),
//          (x: 7, y: 3),
//          (x: 8, y: 2.2),
//          (x: 9, y: 2.5)
//        ]
//        let series = ChartSeries(data: data)
//        series.area = true
//
//        // Use `xLabels` to add more labels, even if empty
//        chartView.xLabels = [0, 3, 6, 9, 12, 15, 18, 21, 24]
//
//        // Format the labels with a unit
//        chartView.xLabelsFormatter = { String(Int(round($1))) + "h" }
//
//        chartView.add(series)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return progresModel.titleLabel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = progresModel.titleLabel[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String? {
      return "Запишувања"
    }
    
    @objc func addWeight() {
        self.performSegue(withIdentifier: "AddWeight", sender: self)
//        let bundle = Bundle(for: ProgressViewController.self)
//        let controller = UIStoryboard(name: "ProgressViewStoryboard", bundle: bundle).instantiateViewController(withIdentifier: "AddNewWeightController") as! AddNewWeightController
//                self.present(controller, animated: true, completion: nil)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeight" {
            _ = segue.destination as! AddNewWeightController
        }
    }
}
