//
//  ViewController.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

class ViewController: UIViewController {
    private lazy var amountView: AmountItemsView = {
        if let view = UINib(nibName: "AmountItemsView", bundle: nil).instantiate(
            withOwner: self, options: nil).first as? AmountItemsView {
            return view
        }
        fatalError("Failed to instantiate AmountItemInfoView from nib.")
    }()
    let data = APIResponse()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountView.frame = CGRect(x: 12, y: 100, width: view.bounds.width - 24, height: 500)
        amountView.setupView(data: data)
        view.addSubview(amountView)
        
    }
        


}

