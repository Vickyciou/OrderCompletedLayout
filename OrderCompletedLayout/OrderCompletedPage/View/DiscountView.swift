//
//  DiscountView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import UIKit

protocol DiscountViewSpec {
    var detail: [ItemInfoDetailField] { get }
}

class DiscountView: BaseXibView {
    @IBOutlet weak var stackView: UIStackView!
    
    func setupView(data: DiscountViewSpec) {
        for index in 0..<data.detail.count {
            let view = AmountItemInfoDetailView()
            stackView.addArrangedSubview(view)
            view.setupView(data: data.detail[index])
            let font = UIFont.medium2(fontName: .naotoSansTC)
            view.setupTrailingSubtitleFont(font: font)
            view.setupTrailingTextColor(trailingSubtitleColor: UIColor(red: 0.941, green: 0.216, blue: 0.259, alpha: 1))
        }
        

    }
}
