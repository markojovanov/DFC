import UIKit

public class DFCTextField: UITextField {
    public func configure(placeHolder: String,
                          secureTextEntry: Bool) {
        configurePlaceHolder(placeHolder: placeHolder)
        configureSecureTextEntry(secureTextEntry: secureTextEntry)
        self.autocorrectionType = .no;
   //     configureFont(font: font)
    }
    private func configurePlaceHolder(placeHolder: String){
        self.attributedPlaceholder =  NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
    }
    private func configureSecureTextEntry(secureTextEntry: Bool){
        self.isSecureTextEntry = secureTextEntry
    }
//    private func configureFont(font: UIFont){
//        font.withSize(15)
//
//    }
    
}
