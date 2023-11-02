//
//  AmountView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import Foundation
import UIKit

protocol AmountViewSpec {
    var titleField : TitleField { get }
    var freeTravelCost: AllItemsField? { get }
    var allItemsField: AllItemsField { get }
    var discountField: DiscountField? { get }
    var amountPriceField: AmountPriceField { get }
}

class AmountView: BaseXibView {
    @IBOutlet weak var cardTitleView: CardTitleView!
    @IBOutlet weak var stackView: UIStackView!
    private let allItemsView = AmountItemsView()
    private let freeTravelCostView = AmountItemsView()
    private let discountView = DiscountView()
    private let bottomAmountView = AmountPriceView()
    
    
    func setupView(data: AmountViewSpec) {
        cardTitleView.setupView(data: data.titleField)
        stackView.addArrangedSubview(allItemsView)
        stackView.addArrangedSubview(freeTravelCostView)
        stackView.addArrangedSubview(discountView)
        stackView.addArrangedSubview(bottomAmountView)
        
        allItemsView.setupView(data: data.allItemsField)
        if let freeTravelCost = data.freeTravelCost {
            freeTravelCostView.setupView(data: freeTravelCost)
        }
        if let discountField = data.discountField {
            discountView.setupView(data: discountField)
        }
        bottomAmountView.setupView(data: data.amountPriceField)
    }
}
