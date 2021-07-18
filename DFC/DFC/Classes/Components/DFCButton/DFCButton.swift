import UIKit

public class DFCButton: UIButton {
    public func configure(title: String,
                          color: UIColor = .white,
                          backgroundColor: CGColor = .init(red: 0.37, green: 0.18, blue: 0.67, alpha: 1),
                          cornerRadius: CGFloat = 18) {
        configureTitle(title: title)
        configureColor(color: color)
        configureBackgroundColor(backgroundColor: backgroundColor)
        configureCornerRadius(cornerRadius: cornerRadius)
    }
    private func configureTitle(title: String){
        setTitle(title, for: .normal)
    }
    private func configureColor(color: UIColor){
        setTitleColor(color, for: .normal)
    }
    private func configureBackgroundColor(backgroundColor: CGColor){
        layer.backgroundColor = backgroundColor
    }
    private func configureCornerRadius(cornerRadius: CGFloat){
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }
}
