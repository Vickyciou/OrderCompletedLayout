//
//  AmountItemsView.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

protocol AmountItemsViewSpec {
    var itemsInfo: [ItemInfoField] { get }
    var subTotalInfo: AmountPriceField { get }
}

class AmountItemsView: UIView {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var amountPriceView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setupView(data: AmountItemsViewSpec) {
        let itemCount = data.itemsInfo.count
        for index in 0..<itemCount {
            guard let view = UINib(nibName: "AmountItemInfoView", bundle: nil).instantiate(
                withOwner: self, options: nil).first as? AmountItemInfoView
            else {
                fatalError("Failed to instantiate AmountItemInfoView from nib.")
            }
            
            stackView.addArrangedSubview(view)
            view.setupView(data: data.itemsInfo[index])
        }
        guard let view = UINib(nibName: "AmountPriceView", bundle: nil).instantiate(
            withOwner: self, options: nil).first as? AmountPriceView
        else {
            fatalError("Failed to instantiate AmountPriceView from nib.")
        }
        
        amountPriceView.addSubview(view)
        view.setupView(data: data.subTotalInfo)
        
    }
    
    
}
