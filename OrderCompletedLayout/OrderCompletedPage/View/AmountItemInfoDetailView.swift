//
//  AmountItemInfoDetailView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

protocol AmountItemInfoDetailViewSpec {
    var title: String? { get }
    var leadingText: String? { get }
    var trailingText: String? { get }
}

class AmountItemInfoDetailView: BaseXibView {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var leadingSubtitleLabel: UILabel!
    @IBOutlet private weak var trailingSubtitleLabel: UILabel!
    @IBOutlet private weak var subtitleStackView: UIStackView!
    
    func setupView(data: AmountItemInfoDetailViewSpec) {
        titleLabel.text = data.title
        leadingSubtitleLabel.text = data.leadingText
        trailingSubtitleLabel.text = data.trailingText
        
        titleLabel.isHidden = data.title == nil || data.title?.isEmpty == true
        
        subtitleStackView.isHidden =
        (data.leadingText == nil || data.leadingText?.isEmpty == true) &&
        (data.trailingText == nil || data.trailingText?.isEmpty == true)
        
    }
    
    func setupLeadingTextColor(leadingSubtitleColor: UIColor) {
        leadingSubtitleLabel.textColor = leadingSubtitleColor
    }
    
    func setupTrailingTextColor(trailingSubtitleColor: UIColor) {
        trailingSubtitleLabel.textColor = trailingSubtitleColor
    }
    
    func setupLeadingSubtitleFont(font: UIFont?) {
        leadingSubtitleLabel.font = font
    }
    
    func setupTrailingSubtitleFont(font: UIFont?) {
        trailingSubtitleLabel.font = font
    }
}
