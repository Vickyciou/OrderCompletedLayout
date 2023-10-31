//
//  AmountView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/31.
//

import UIKit

protocol AmountViewSpec {
    var titleField : TitleField { get }
    var freeTravelCost: AllItemsField? { get }
    var allItemsField: AllItemsField { get }
//    var discountField
    var amountPriceField: AmountPriceField { get }
}

class AmountView: UIView {
    @IBOutlet weak var stackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupView(data: AmountViewSpec) {
        guard let allItemsView = UINib(nibName: "AmountItemsView", bundle: nil).instantiate(
            withOwner: self, options: nil).first as? AmountItemsView
        else {
            fatalError("Failed to instantiate AmountItemsView from nib.")
        }
        
//        stackView.addArrangedSubview(allItemsView)
        
        guard let bottomAmountView = UINib(nibName: "AmountPriceView", bundle: nil).instantiate(
            withOwner: self, options: nil).first as? AmountPriceView
        else {
            fatalError("Failed to instantiate AmountPriceView from nib.")
        }
        stackView.addArrangedSubview(allItemsView)
        stackView.addArrangedSubview(bottomAmountView)
        allItemsView.setupView(data: data.allItemsField)
        bottomAmountView.setupView(data: data.amountPriceField)
        
    }
}
