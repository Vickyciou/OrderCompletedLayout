//
//  AmountViewSpec.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import Foundation
import UIKit

protocol TotalAmountSpec {
//    var titleField : TitleField { get }
    var itemInfoField: [ItemInfoField] { get }
//    var subTotalField
//    var discountField
//    var amountFiled
}

struct TitleField {
    var leadingTitleText: String?
    var middleTitleText: Int?
    var trailingTitleText: String?
    var isExpended: Bool
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

extension ItemInfoField: AmountItemInfoViewSpec {}

extension ItemInfoDetailField: AmountItemInfoDetailViewSpec {}
