//
//  AmountViewModel.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation
import UIKit

struct TitleField {
    var leadingText: String
    var blackAndRedText: String?
    var trailingText: String?
    var isExpended: Bool
}

struct AllItemsField {
    var itemsInfo: [ItemInfoField]
    var subTotalInfo: AmountPriceField
}

struct ItemInfoField {
    var showRedLine: Bool
    var leadingTitleText: String?
    var trailingTitleText: String?
    var details: [ItemInfoDetailField]
}

struct ItemInfoDetailField {
    var title: String?
    var leadingText: String?
    var trailingText: String?
    var leadingTextColor: UIColor? = .black
    var trailingTextColor: UIColor? = .black
}

struct AmountPriceField {
    var titleTrailingRedText: String?
    var subTrailingRedText: String?
    var subLeadingBlackText: String?
    var descriptionText: String?
}

struct DiscountField {
    var discountDetail: [DiscountDetailField]
}

struct DiscountDetailField {
    var leadingText: String?
    var trailingText: String?
}
extension TitleField: CardTitleViewSpec {}

extension AllItemsField: AmountItemsViewSpec {}

extension ItemInfoField: AmountItemInfoViewSpec {}

extension ItemInfoDetailField: AmountItemInfoDetailViewSpec {}

extension AmountPriceField: AmountPriceViewSpec {}

extension DiscountField: DiscountViewSpec {}

extension DiscountDetailField: DiscountDetailViewSpec {}
