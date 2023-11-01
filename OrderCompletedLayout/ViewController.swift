//
//  ViewController.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/1.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amountView: AmountView!
    let data = APIResponse()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountView.setupView(data: data)
    }


}
