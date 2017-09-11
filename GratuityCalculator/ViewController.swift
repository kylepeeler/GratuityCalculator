//
//  ViewController.swift
//  GratuityCalculator
//
//  Created by Elliott, Rob on 8/30/17.
//  Copyright © 2017 Elliott, Rob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblTipPercentOutput: UILabel!
    @IBOutlet var lblTipAmountOutput: UILabel!
    @IBOutlet var lblTotalAmountOutput: UILabel!
    
    let gratuityCalc = Gratuity(tipPercent: 0.15, billAmount: 0.00)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func txtBillAmountUpdated(_ sender: Any) {
        print("Bill Amount updated!")
    }

    
    
    @IBAction func slideTipPercentUpdated(_ sender: Any) {
        print("Tip Percentage updated!")
        let tipPercent = (sender as! UISlider).value
        gratuityCalc.tipPercent = NSDecimalNumber(value: tipPercent)
        print(gratuityCalc.tipPercent)
    }
    
}












