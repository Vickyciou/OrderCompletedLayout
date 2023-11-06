//
//  ViewController.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountView: AmountView!
    let type: ProductType
    let amountData: AmountViewSpec
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountView.setupView(type: type, data: amountData)

    }
    init(type: ProductType, amountData: AmountViewSpec) {
        self.type = type
        self.amountData = amountData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
