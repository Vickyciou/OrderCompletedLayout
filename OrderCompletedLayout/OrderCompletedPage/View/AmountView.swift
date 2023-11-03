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

enum ProductType {
    case group, flight, hotel, vacation, tickets
}

class AmountView: BaseXibView {
    @IBOutlet weak var cardTitleView: CardTitleView!
    @IBOutlet weak var stackView: UIStackView!
    private let allItemsView = AmountItemsView()
    private let freeTravelCostView = AmountItemsView()
    private let discountView = DiscountView()
    private let bottomAmountView = AmountPriceView()
    
    func setupView(type: ProductType, data: AmountViewSpec) {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        cardTitleView.setupView(data: data.titleField)
        
        let subviews: [UIView] = {
            switch type {
            case .group:
                return [allItemsView, discountView, bottomAmountView]
            case .flight:
                return [allItemsView, discountView, bottomAmountView]
            case .hotel:
                return [allItemsView, discountView, bottomAmountView]
            case .vacation:
                return [freeTravelCostView, allItemsView, discountView, bottomAmountView]
            case .tickets:
                return [allItemsView, discountView, bottomAmountView]
            }
        }()
        subviews.forEach {
            stackView.addArrangedSubview($0)
        }
        
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
