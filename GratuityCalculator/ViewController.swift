//
//  ViewController.swift
//  GratuityCalculator
//
//  Created by Peeler, Kyle on 8/30/17.
//  Copyright © 2017 Peeler, Kyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblTipPercentOutput: UILabel!
    @IBOutlet var lblTipAmountOutput: UILabel!
    @IBOutlet var lblTotalAmountOutput: UILabel!
    
    let gratuityCalc = Gratuity(tipPercent: 0.15, billAmount: 0.00)
    
    //create class level formatters since it is used in multiple methods
    let decimalFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 2
        nf.maximumFractionDigits = 2
        return nf;
    }()
    let percentFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .percent
        return nf;
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func txtBillAmountUpdated(_ sender: Any) {
        //print("Bill Amount updated!")
        
        let billAmount = (sender as! UITextField).text
        if let text = (sender as! UITextField).text, !text.isEmpty{
            gratuityCalc.billAmount = NSDecimalNumber(string: billAmount)
            lblTipAmountOutput.text = decimalFormatter.string(from: gratuityCalc.tipAmount)
            lblTotalAmountOutput.text = decimalFormatter.string(from: gratuityCalc.totalBillAmount)
        }else{
            lblTipAmountOutput.text = "0.00";
            lblTotalAmountOutput.text = "0.00";
        }
        
    }

    
    
    @IBAction func slideTipPercentUpdated(_ sender: Any) {
        //print("Tip Percentage updated!")
        //It's okay to force unwrap it here because there will always get a value
        let tipPercent = (sender as! UISlider).value
        gratuityCalc.tipPercent = NSDecimalNumber(value: tipPercent)
        lblTipPercentOutput.text = percentFormatter.string(from: gratuityCalc.tipPercent)
        lblTipAmountOutput.text = decimalFormatter.string(from: gratuityCalc.tipAmount)
        lblTotalAmountOutput.text = decimalFormatter.string(from: gratuityCalc.totalBillAmount)
    }



}












