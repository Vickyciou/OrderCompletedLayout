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

class AmountItemInfoView: UIView {
    @IBOutlet weak var redLineimageView: UIImageView!
    @IBOutlet weak var leadingTitleLabel: UILabel!
    @IBOutlet weak var trailingTitleLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    var isRedLineHidden: Bool = false

    override func awakeFromNib() {
        super.awakeFromNib()
        redLineimageView.isHidden = isRedLineHidden
        
    }
    func setupView(data: AmountItemInfoViewSpec) {
        isRedLineHidden = data.showRedLine
        leadingTitleLabel.text = data.leadingTitleText
        trailingTitleLabel.text = data.trailingTitleText
        
        for index in 0..<data.details.count {
            guard let view = UINib(nibName: "AmountItemInfoDetailView", bundle: nil).instantiate(
                withOwner: self, options: nil).first as? AmountItemInfoDetailView
            else {
                fatalError("Failed to instantiate AmountItemInfoDetailView from nib.")
            }
            view.setupView(data: data.details[index])
            stackView.addArrangedSubview(view)
        }
    }
}
