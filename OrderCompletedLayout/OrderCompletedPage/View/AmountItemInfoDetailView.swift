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
    var leadingTextColor: UIColor? { get }
    var trailingTextColor: UIColor? { get }
}

class AmountItemInfoDetailView: BaseXibView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var leadingSubtitleLabel: UILabel!
    @IBOutlet weak var trailingSubtitleLabel: UILabel!
    @IBOutlet weak var subtitleStackView: UIStackView!
    private var leadingSubtitleColor: UIColor? = .black
    private var trailingSubtitleColor: UIColor? = .black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupView(data: AmountItemInfoDetailViewSpec) {
        titleLabel.text = data.title
        leadingSubtitleLabel.text = data.leadingText
        trailingSubtitleLabel.text = data.trailingText
        
        titleLabel.isHidden = data.title == nil || data.title?.isEmpty == true
        
        subtitleStackView.isHidden =
        (data.leadingText == nil || data.leadingText?.isEmpty == true) &&
        (data.trailingText == nil || data.trailingText?.isEmpty == true)

        leadingSubtitleLabel.textColor = data.leadingTextColor ?? leadingSubtitleColor
        trailingSubtitleLabel.textColor = data.trailingTextColor ?? trailingSubtitleColor
    }
}
