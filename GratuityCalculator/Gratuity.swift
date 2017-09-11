//
//  Gratuity.swift
//  GratuityCalculator
//
//  Created by Kyle Peeler on 9/6/17.
//  Copyright © 2017 Elliott, Rob. All rights reserved.
//

import Foundation

class Gratuity : NSObject {
    var tipPercent: NSDecimalNumber = 0
    var billAmount: NSDecimalNumber = 0
    var tipAmount: NSDecimalNumber {
        return tipPercent.multiplying(by: billAmount)
    }
    var totalBillAmount: NSDecimalNumber {
        return billAmount.adding(self.tipAmount)
    }
    
    init(tipPercent: NSDecimalNumber, billAmount: NSDecimalNumber) {
        self.tipPercent = tipPercent
        self.billAmount = billAmount
    }
    
}
