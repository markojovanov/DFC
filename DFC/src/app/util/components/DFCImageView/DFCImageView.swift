import UIKit

public class DFCImageView: UIImageView {
//    public func configure(borderColor: CGColor = UIColor.white.cgColor) {
//        configureStroke(borderColor: borderColor)
//    }
    
    private func configureStroke(borderColor: CGColor) {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2
        self.layer.borderColor = borderColor
    }
}
