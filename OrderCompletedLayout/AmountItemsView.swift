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

class AmountItemsView: BaseXibView {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var amountPriceView: AmountPriceView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func setupView(data: AmountItemsViewSpec) {
        let itemCount = data.itemsInfo.count
        for index in 0..<itemCount {
            let view = AmountItemInfoView()
            stackView.addArrangedSubview(view)
            view.setupView(data: data.itemsInfo[index])
        }
        
//        amountPriceView = UINib(nibName: "AmountPriceView", bundle: nil).instantiate(
//            withOwner: self, options: nil).first as? AmountPriceView
        amountPriceView.setupView(data: data.subTotalInfo)
        
    }
    
    
}
