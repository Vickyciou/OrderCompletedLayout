//
//  DiscountView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import UIKit

protocol DiscountViewSpec {
    var discountDetail: [DiscountDetailField] { get }
}

class DiscountView: BaseXibView {
    @IBOutlet weak var stackView: UIStackView!
    
    func setupView(data: DiscountViewSpec) {
        for index in 0..<data.discountDetail.count {
            let view = DiscountDetailView()
            stackView.addArrangedSubview(view)
            view.setupView(data: data.discountDetail[index])
        }
        

    }
}
