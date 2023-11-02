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
        cardTitleView.setupView(data: data.titleField)

        switch type {
        case .group:
            let allItemsView = AmountItemsView()
            stackView.addArrangedSubview(allItemsView)
            let discountView = DiscountView()
            stackView.addArrangedSubview(discountView)
            allItemsView.setupView(data: data.allItemsField)
            let bottomAmountView = AmountPriceView()
            stackView.addArrangedSubview(bottomAmountView)
            bottomAmountView.setupView(data: data.amountPriceField)
        case .flight:
            let allItemsView = AmountItemsView()
            stackView.addArrangedSubview(allItemsView)
            let discountView = DiscountView()
            stackView.addArrangedSubview(discountView)
            allItemsView.setupView(data: data.allItemsField)
            let bottomAmountView = AmountPriceView()
            stackView.addArrangedSubview(bottomAmountView)
            bottomAmountView.setupView(data: data.amountPriceField)
        case .hotel:
            let allItemsView = AmountItemsView()
            stackView.addArrangedSubview(allItemsView)
            let discountView = DiscountView()
            stackView.addArrangedSubview(discountView)
            allItemsView.setupView(data: data.allItemsField)
            let bottomAmountView = AmountPriceView()
            stackView.addArrangedSubview(bottomAmountView)
            bottomAmountView.setupView(data: data.amountPriceField)
        case .vacation:
            let freeTravelCostView = AmountItemsView()
            stackView.addArrangedSubview(freeTravelCostView)
            if let freeTravelCost = data.freeTravelCost {
                freeTravelCostView.setupView(data: freeTravelCost)
            }
            let allItemsView = AmountItemsView()
            stackView.addArrangedSubview(allItemsView)
            let discountView = DiscountView()
            stackView.addArrangedSubview(discountView)
            allItemsView.setupView(data: data.allItemsField)
            let bottomAmountView = AmountPriceView()
            stackView.addArrangedSubview(bottomAmountView)
            bottomAmountView.setupView(data: data.amountPriceField)
        case .tickets:
            let allItemsView = AmountItemsView()
            stackView.addArrangedSubview(allItemsView)
            let discountView = DiscountView()
            stackView.addArrangedSubview(discountView)
            allItemsView.setupView(data: data.allItemsField)
            let bottomAmountView = AmountPriceView()
            stackView.addArrangedSubview(bottomAmountView)
            bottomAmountView.setupView(data: data.amountPriceField)
        }
//        stackView.addArrangedSubview(allItemsView)
//        stackView.addArrangedSubview(freeTravelCostView)
//        stackView.addArrangedSubview(discountView)
//        stackView.addArrangedSubview(bottomAmountView)
//        
//        allItemsView.setupView(data: data.allItemsField)
//        if let freeTravelCost = data.freeTravelCost {
//            freeTravelCostView.setupView(data: freeTravelCost)
//        }
//        if let discountField = data.discountField {
//            discountView.setupView(data: discountField)
//        }
//        bottomAmountView.setupView(data: data.amountPriceField)
    }
}
