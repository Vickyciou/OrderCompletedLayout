//
//  AmountViewSpec.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation
import UIKit

struct TitleField {
    var leadingTitleText: String?
    var middleTitleText: Int?
    var trailingTitleText: String?
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

extension AllItemsField: AmountItemsViewSpec {}

extension ItemInfoField: AmountItemInfoViewSpec {}

extension ItemInfoDetailField: AmountItemInfoDetailViewSpec {}

extension AmountPriceField: AmountPriceViewSpec {}
