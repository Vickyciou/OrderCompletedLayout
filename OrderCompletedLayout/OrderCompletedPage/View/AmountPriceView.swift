//
//  AmountPriceView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

protocol AmountPriceViewSpec {
    var titleTrailingRedText: String? { get }
    var subTrailingRedText: String? { get }
    var subLeadingBlackText: String? { get }
    var descriptionText: String? { get }
}

class AmountPriceView: BaseXibView {
    @IBOutlet weak var grayLineView: UIView!
    @IBOutlet weak var titleTrailingRedLabel: UILabel!
    @IBOutlet weak var subTrailingRedLabel: UILabel!
    @IBOutlet weak var subLeadingBlackLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var subtitleStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupView(data: AmountPriceViewSpec) {
        titleTrailingRedLabel.text = data.titleTrailingRedText
        subTrailingRedLabel.text = data.subTrailingRedText
        subLeadingBlackLabel.text = data.subLeadingBlackText
        descriptionLabel.text = data.descriptionText
        
        subtitleStackView.isHidden =
        (data.subLeadingBlackText == nil || data.subLeadingBlackText?.isEmpty == true) &&
        (data.subTrailingRedText == nil || data.subTrailingRedText?.isEmpty == true)
        
        descriptionLabel.isHidden = data.descriptionText == nil || data.descriptionText?.isEmpty == true
        
        if descriptionLabel.numberOfLines >= 1 {
            descriptionLabel.textAlignment = .right
        } else {
            descriptionLabel.textAlignment = .left
        }
    }
}
