//
//  AddNewWeightController.swift
//  DFC
//
//  Created by Marko Jovanov on 31.8.21.
//

import UIKit

class AddNewWeightController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Додај тежина"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }

}
