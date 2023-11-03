//
//  CardTitleView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/2.
//

import UIKit

protocol CardTitleViewSpec {
    var leadingText: String { get }
    var blackAndRedText: String? { get }
    var trailingText: String? { get }
    var isExpended: Bool { get }
}

class CardTitleView: BaseXibView {
    @IBOutlet weak var leadingLabel: UILabel!
    @IBOutlet weak var blackAndRedLabel: UILabel!
    @IBOutlet weak var trailingButton: UIButton!
    @IBOutlet weak var trailingLabel: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    let brandColor = UIColor(red: 0.941, green: 0.216, blue: 0.259, alpha: 1)
    private lazy var arrowUpImage = UIImage(systemName: "arrowtriangle.up.fill")?.withTintColor(brandColor)
    private lazy var arrowDownImage = UIImage(systemName: "arrowtriangle.down.fill")?.withTintColor(brandColor)
    
    private var isExpended: Bool = false {
        didSet {
            if isExpended == true {
                arrowImageView.image = arrowUpImage
            } else {
                arrowImageView.image = arrowDownImage
            }
        }
    }
    
    @IBAction func trailingButtonTapped(_ sender: Any) {
        isExpended.toggle()
        
    }
    
    func setupView(data: CardTitleViewSpec) {
        leadingLabel.text = data.leadingText
        trailingLabel.text = data.trailingText
        
        if let blackAndRedText = data.blackAndRedText {
            let attributedString = NSMutableAttributedString(string: blackAndRedText)
            
            let firstAttributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 14),
                .foregroundColor: UIColor.black
            ]
            let secondAttributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.boldSystemFont(ofSize: 16),
                .foregroundColor: UIColor.red
            ]
            
            attributedString.addAttributes(firstAttributes, range: NSRange(location: 0, length: 3))
            
            // 從第四個字符開始直到字符串末尾，給其餘的字元添加secondAttributes
            let remainingLength = blackAndRedText.count - 3
            if remainingLength > 0 {
                attributedString.addAttributes(secondAttributes, range: NSRange(location: 3, length: remainingLength))
            }
            
            blackAndRedLabel.attributedText = attributedString
        }

    }
}
