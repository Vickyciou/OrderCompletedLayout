//
//  AmountItemInfoView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

protocol AmountItemInfoViewSpec {
    var showRedLine: Bool { get }
    var leadingTitleText: String? { get }
    var trailingTitleText: String? { get }
    var details: [ItemInfoDetailField] { get }
    
}

class AmountItemInfoView: BaseXibView {
    @IBOutlet weak var redLineView: UIView!
    @IBOutlet weak var leadingTitleLabel: UILabel!
    @IBOutlet weak var trailingTitleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func setupView(data: AmountItemInfoViewSpec) {
        redLineView.isHidden = !data.showRedLine
        leadingTitleLabel.text = data.leadingTitleText
        trailingTitleLabel.text = data.trailingTitleText
        
        trailingTitleLabel.isHidden = data.trailingTitleText == nil || data.trailingTitleText?.isEmpty == true
        
        for index in 0..<data.details.count {
            let view = AmountItemInfoDetailView()
            stackView.addArrangedSubview(view)
            view.setupView(data: data.details[index])
        }
    }
}
