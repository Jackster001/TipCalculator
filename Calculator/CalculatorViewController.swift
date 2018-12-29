//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Wei Lin on 12/28/18.
//  Copyright © 2018 Wei Lin. All rights reserved.
//

import Foundation
import UIKit

class CalculatorViewController: UIViewController
{
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tip: UILabel!

    var tipCal = tipCalculator(OriginalBill: 0, tipPercentage: 0)
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        bill.becomeFirstResponder()
    }
    func CalculateTotal(){
        tipCal.tipPercentage = Double(slider.value) / 1000.0
        tipCal.OriginalBill = (bill.text! as NSString).doubleValue
        tipCal.CalculateTotal()
        update()
    }
    
    func update(){
        total.text = String(format: "$%0.2f", tipCal.totalAmount)
    }
    
    //functions
    @IBAction func tipValueChanger(_ sender: Any) {
        tip.text = String(format: "Tip: %02d%%", Int(slider.value))
        CalculateTotal()
    }
    @IBAction func BillChange(_ sender: Any) {
        CalculateTotal()
    }
}
