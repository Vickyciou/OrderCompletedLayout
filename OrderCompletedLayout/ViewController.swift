//
//  ViewController.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/10/30.
//

import UIKit

class ViewController: UIViewController {
    private lazy var amountView: AmountView = {
        if let view = UINib(nibName: "AmountView", bundle: nil).instantiate(
            withOwner: self, options: nil).first as? AmountView {
            return view
        }
        fatalError("Failed to instantiate AmountView from nib.")
    }()
    let data = APIResponse()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(amountView)
        amountView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            amountView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            amountView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            amountView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            amountView.heightAnchor.constraint(equalToConstant: 500)])
        
        amountView.setupView(data: data)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        amountView.setupView(data: data)
    }
        


}

