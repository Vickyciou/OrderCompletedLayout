//
//  AmountViewModel.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation
import UIKit

struct Response {
    let data: [AmountResponse]
}

struct AmountResponse {
    let type: ProductType
    let amountInfo: AmountInfo
}

struct AmountInfo {
    var titleField : TitleField
    var freeTravelCost: AllItemsField?
    var allItemsField: AllItemsField
    var discountField: DiscountField?
    var amountPriceField: AmountPriceField
}

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
}

struct AmountPriceField {
    var titleTrailingRedText: String?
    var subTrailingRedText: String?
    var subLeadingBlackText: String?
    var descriptionText: String?
}

struct DiscountField {
    var detail: [ItemInfoDetailField]
}

struct DiscountDetailField {
    var leadingText: String?
    var trailingText: String?
}

extension AmountInfo: AmountViewSpec {}

extension TitleField: CardTitleViewSpec {}

extension AllItemsField: AmountItemsViewSpec {}

extension ItemInfoField: AmountItemInfoViewSpec {}

extension ItemInfoDetailField: AmountItemInfoDetailViewSpec {}

extension AmountPriceField: AmountPriceViewSpec {}

extension DiscountField: DiscountViewSpec {}

extension DiscountDetailField: DiscountDetailViewSpec {}
