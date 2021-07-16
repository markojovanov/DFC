import UIKit

public class DFCTextField: UITextField {
    public func configure(placeHolder: String,
                          secureTextEntry: Bool,
                          fontColor: UIColor) {
        configurePlaceHolder(placeHolder: placeHolder)
        configureSecureTextEntry(secureTextEntry: secureTextEntry)
        configureFontColor(fontColor: fontColor)
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
    
}
