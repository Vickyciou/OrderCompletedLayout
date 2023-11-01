//
//  BaseXibView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import UIKit

@IBDesignable
class BaseXibView: UIView {
    @IBInspectable var nibName: String?
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
 
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
 
    func xibSetup() {
        let boundle = Bundle(for: self.classForCoder)
        if nibName == nil {
            nibName = "\(self.classForCoder)"
        }
        let nib = UINib(nibName: nibName!, bundle: boundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.addSubview(view)
        }
    }
}
