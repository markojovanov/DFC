import UIKit

public class DFCTextField: UITextField {
    public func configure(placeHolder: String,
                          secureTextEntry: Bool = false,
                          fontColor: UIColor = .darkGray,
                          fontSize: CGFloat = 14.0) {
        configurePlaceHolder(placeHolder: placeHolder)
        configureSecureTextEntry(secureTextEntry: secureTextEntry)
        configureFontColor(fontColor: fontColor)
        configureFontSize(fontSize: fontSize)
        self.autocorrectionType = .no;
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
}
