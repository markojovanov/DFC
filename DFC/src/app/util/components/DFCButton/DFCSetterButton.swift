import UIKit

public class DFCSetterButton: UIButton {
    public func configure(title: NSString,
                          fontSizeBig: CGFloat = 17.0,
                          fontSizeSmall: CGFloat = 12.0,
                          color: UIColor = .white,
                          backgroundColor: CGColor = .init(red:0.92, green:0.06, blue:1, alpha:1.0),
                          cornerRadius: CGFloat = 5,
                          contentHorizontalAlignment: ContentHorizontalAlignment = .leading,
                          contentVerticalAlignment: ContentVerticalAlignment = .center) {
        configureTitle(title: title,
                       fontSizeBig: fontSizeBig,
                       fontSizeSmall: fontSizeSmall)
        configureColor(color: color)
        configureBackgroundColor(backgroundColor: backgroundColor)
        configureCornerRadius(cornerRadius: cornerRadius)
        configureContentHorizontalAlignment(contentHorizontalAlignment: contentHorizontalAlignment)
        configureContentVerticalAlignment(contentVerticalAlignment: contentVerticalAlignment)
    }
    private func configureTitle(title: NSString,
                                fontSizeBig: CGFloat,
                                fontSizeSmall: CGFloat) {
            self.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
            let buttonText: NSString = title
            let newlineRange: NSRange = buttonText.range(of: "\n")
            var substring1 = ""
            var substring2 = ""
            if(newlineRange.location != NSNotFound) {
                substring1 = buttonText.substring(to: newlineRange.location)
                substring2 = buttonText.substring(from: newlineRange.location)
            }
        let font1: UIFont = UIFont.systemFont(ofSize: fontSizeBig)
            let attributes1 = [NSMutableAttributedString.Key.font: font1]
            let attrString1 = NSMutableAttributedString(string: substring1, attributes: attributes1)
        let font2: UIFont = UIFont.systemFont(ofSize: fontSizeSmall)
            let attributes2 = [NSMutableAttributedString.Key.font: font2]
            let attrString2 = NSMutableAttributedString(string: substring2, attributes: attributes2)
            attrString1.append(attrString2)
            self.setAttributedTitle(attrString1, for: [])
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
    private func configureContentVerticalAlignment(contentVerticalAlignment: ContentVerticalAlignment) {
        self.contentVerticalAlignment = contentVerticalAlignment
    }
    private func configureContentHorizontalAlignment(contentHorizontalAlignment: ContentHorizontalAlignment) {
        self.contentHorizontalAlignment = contentHorizontalAlignment
    }
}
