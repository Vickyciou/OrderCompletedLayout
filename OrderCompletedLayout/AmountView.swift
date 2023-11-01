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
//    var discountField
    var amountPriceField: AmountPriceField { get }
}

class AmountView: BaseXibView {
    @IBOutlet weak var stackView: UIStackView!
    private let allItemsView = AmountItemsView()
    private let bottomAmountView = AmountPriceView()
    
    func setupView(data: AmountViewSpec) {
        stackView.addArrangedSubview(allItemsView)
        stackView.addArrangedSubview(bottomAmountView)
        allItemsView.setupView(data: data.allItemsField)
        bottomAmountView.setupView(data: data.amountPriceField)
    }
}
