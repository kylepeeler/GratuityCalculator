//
//  ViewController.swift
//  GratuityCalculator
//
//  Created by Elliott, Rob on 8/30/17.
//  Copyright © 2017 Elliott, Rob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblTipPersdfsdfsdfntOutput: UILabel!
    @IBOutlet var lblTipAmountOutput: UILabel!
    @IBOutlet var lblTotalAmountOutput: UILabel!
    

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
    }
    
}












