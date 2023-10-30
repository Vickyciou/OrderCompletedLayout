//
//  AmountItemInfoDetailView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

class AmountItemInfoDetailView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var leadingSubtitleLabel: UILabel!
    @IBOutlet weak var trailingSubtitleLabel: UILabel!
    private var leadingSubtitleColor: UIColor? = .black
    private var trailingSubtitleColor: UIColor? = .black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setupView(data: ItemInfoDetailField) {
        titleLabel.text = data.title
        leadingSubtitleLabel.text = data.leadingText
        trailingSubtitleLabel.text = data.trailingText
        leadingSubtitleLabel.textColor = data.leadingTextColor ?? leadingSubtitleColor
        trailingSubtitleLabel.textColor = data.trailingTextColor ?? trailingSubtitleColor
    }
}
