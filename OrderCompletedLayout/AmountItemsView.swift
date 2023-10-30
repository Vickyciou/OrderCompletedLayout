//
//  AmountItemsView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

class AmountItemsView: UIView {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var AmountPriceView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setupView(data: TotalAmountSpec) {
        let itemCount = data.itemInfoField.count
        for index in 0..<itemCount {
            guard let view = UINib(nibName: "AmountItemInfoView", bundle: nil).instantiate(
                withOwner: self, options: nil).first as? AmountItemInfoView
            else {
                fatalError("Failed to instantiate AmountItemInfoView from nib.")
            }
            view.setupView(data: data.itemInfoField[index])
            stackView.addArrangedSubview(view)
        }
        
    }
    
    
}
