import UIKit

public class DFCLabel: UILabel {
    public func configure(title: String,
                          fontSize: CGFloat = 26.0,
                          textAlignment: NSTextAlignment = .center,
                          textColor: UIColor = .black) {
        configureTitle(title: title)
        configureFontSize(fontSize: fontSize)
        configureTextColor(textColor: textColor)
        configureTextAlignment(textAlignment: textAlignment)
    }
    private func configureTitle(title: String) {
        self.text = title
    }
    private func configureFontSize(fontSize: CGFloat) {
        self.font.withSize(fontSize)
    }
    private func configureTextAlignment(textAlignment: NSTextAlignment) {
        self.textAlignment = textAlignment
    }
    private func configureTextColor(textColor: UIColor) {
        self.textColor = textColor
    }
}
