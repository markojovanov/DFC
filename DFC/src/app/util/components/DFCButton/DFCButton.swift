import UIKit

public class DFCButton: UIButton {
    public func configure(title: String,
                          color: UIColor = .white,
                          backgroundColor: CGColor = .init(red:0.92, green:0.06, blue:1, alpha:1.0),
                          cornerRadius: CGFloat = 18){
        configureTitle(title: title)
        configureColor(color: color)
        configureBackgroundColor(backgroundColor: backgroundColor)
        configureCornerRadius(cornerRadius: cornerRadius)
    }
    private func configureTitle(title: String) {
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
