//
//  tipCalculator.swift
//  Calculator
//
//  Created by Wei Lin on 12/28/18.
//  Copyright © 2018 Wei Lin. All rights reserved.
//

import Foundation

class tipCalculator{
    var OriginalBill: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    
    init(OriginalBill: Double, tipPercentage: Double){
        self.OriginalBill = OriginalBill
        self.tipPercentage = tipPercentage
    }
    
    func CalculateTotal(){
        tipAmount = OriginalBill * Double(tipPercentage)
        totalAmount = OriginalBill + tipAmount
    }
}
