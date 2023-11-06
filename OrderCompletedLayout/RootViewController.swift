//
//  RootViewController.swift
//  OrderCompletedLayout
//
//  Created by Vicky on 2023/11/6.
//

import UIKit

class RootViewController: UIViewController {
    
    let amountData = APIResponse()

    @IBAction func groupButton(_ sender: Any) {
        guard let vacationAmountData = amountData.combinedResponse.data.first(where: { $0.type == .group })?.amountInfo else { return }
        let vc = ViewController(type: .group, amountData: vacationAmountData)
        show(vc, sender: nil)
    }
    
    @IBAction func flightButton(_ sender: Any) {
        guard let vacationAmountData = amountData.combinedResponse.data.first(where: { $0.type == .flight })?.amountInfo else { return }
        let vc = ViewController(type: .flight, amountData: vacationAmountData)
        show(vc, sender: nil)
    }
    
    @IBAction func hotelButton(_ sender: Any) {
        guard let vacationAmountData = amountData.combinedResponse.data.first(where: { $0.type == .hotel })?.amountInfo else { return }
        let vc = ViewController(type: .hotel, amountData: vacationAmountData)
        show(vc, sender: nil)
    }
    
    
    @IBAction func vacationButton(_ sender: Any) {
        guard let vacationAmountData = amountData.combinedResponse.data.first(where: { $0.type == .vacation })?.amountInfo else { return }
        let vc = ViewController(type: .vacation, amountData: vacationAmountData)
        show(vc, sender: nil)
    }
    
    @IBAction func ticketButton(_ sender: Any) {
        guard let ticketAmountData = amountData.combinedResponse.data.first(where: { $0.type == .tickets })?.amountInfo else { return }
        let vc = ViewController(type: .tickets, amountData: ticketAmountData)
        show(vc, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Lion"
      
    }

}
