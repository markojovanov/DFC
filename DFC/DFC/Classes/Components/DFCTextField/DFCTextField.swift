import UIKit

public class DFCTextField: UITextField {
    public func configure(placeHolder: String) {
        configurePlaceHolder(placeHolder: placeHolder)
   //     configureFont(font: font)
    }
    private func configurePlaceHolder(placeHolder: String){
        self.attributedPlaceholder =  NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])
    }
//    private func configureFont(font: UIFont){
//        font.withSize(15)
//
//    }
    
}
