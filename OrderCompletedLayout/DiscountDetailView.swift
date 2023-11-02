//
//  DiscountDetailView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/2.
//

import UIKit

protocol DiscountDetailViewSpec {
    var leadingText: String? { get }
    var trailingText: String? { get }
}

class DiscountDetailView: BaseXibView {
    @IBOutlet weak var leadingLabel: UILabel!
    @IBOutlet weak var trailingLabel: UILabel!
    
    func setupView(data: DiscountDetailViewSpec) {
        leadingLabel.text = data.leadingText
        trailingLabel.text = data.trailingText
    }
}
