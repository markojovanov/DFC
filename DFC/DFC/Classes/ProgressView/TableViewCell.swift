//
//  TableViewCell.swift
//  DFC
//
//  Created by Marko Jovanov on 31.8.21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var titleCellLabel: UILabel! {
        didSet {
            titleCellLabel.font.withSize(16)
        }
    }
    @IBOutlet var subtitleCellLabel: UILabel! {
        didSet {
            subtitleCellLabel.preferredMaxLayoutWidth = 350
            subtitleCellLabel.font.withSize(16)
            subtitleCellLabel.baselineAdjustment = .alignCenters
            subtitleCellLabel.contentMode = .topLeft
            subtitleCellLabel.sizeToFit()
            subtitleCellLabel.numberOfLines = 0
            subtitleCellLabel.lineBreakMode = .byWordWrapping
            subtitleCellLabel.textColor = .darkGray
        }
    }

}
