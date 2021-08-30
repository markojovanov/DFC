//
//  File.swift
//  DFC
//
//  Created by Marko Jovanov on 30.8.21.
//
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
        chart.add(series)
        tableView.delegate = self
        tableView.dataSource = self
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
        let bundle = Bundle(for: ProgressViewController.self)
        let controller = UIStoryboard(name: "ProgressViewStoryboard", bundle: bundle).instantiateViewController(withIdentifier: "AddNewWeightController") as! AddNewWeightController
                self.present(controller, animated: true, completion: nil)

    }
}
