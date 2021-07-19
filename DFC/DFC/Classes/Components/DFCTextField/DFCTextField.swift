import UIKit

public class DFCTextField: UITextField {
    public func configure(placeHolder: String,
                          secureTextEntry: Bool = false,
                          fontColor: UIColor = .darkGray,
                          fontSize: CGFloat = 14.0,
                          borderColor: CGColor = .init(red: 0, green: 0, blue: 0, alpha: 1.0),
                          borderWidth: CGFloat = 1.0,
                          backgroundColor: UIColor = UIColor(red:0.91, green:0.91, blue:0.91, alpha:1.0)) {
        self.autocorrectionType = .no
        self.layer.cornerRadius = 5.0
        configurePlaceHolder(placeHolder: placeHolder)
        configureSecureTextEntry(secureTextEntry: secureTextEntry)
        configureFontColor(fontColor: fontColor)
        configureFontSize(fontSize: fontSize)
        configureBorder(borderColor: borderColor, borderWidth: borderWidth)
        configureBackgroundColor(backgroundColor: backgroundColor)
    }
    private func configurePlaceHolder(placeHolder: String) {
        self.attributedPlaceholder = NSAttributedString(string: placeHolder)
    }
    private func configureSecureTextEntry(secureTextEntry: Bool) {
        self.isSecureTextEntry = secureTextEntry
    }
    private func configureFontColor(fontColor: UIColor) {
        self.textColor = fontColor
    }
    private func configureFontSize(fontSize: CGFloat) {
        self.font = self.font?.withSize(fontSize)
    }
    private func configureBorder(borderColor: CGColor,
                                 borderWidth: CGFloat) {
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
    private func configureBackgroundColor(backgroundColor: UIColor)
    {
        self.backgroundColor = backgroundColor
    }
}
