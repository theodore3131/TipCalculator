//
//  ViewController.swift
//  TipCalculator
//
//  Created by zhiwei xu on 09/09/2017.
//  Copyright © 2017 zhiwei xu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBill: UITextField!
    
    @IBOutlet weak var txtTip: UITextField!
    
    @IBOutlet weak var lblTipAmount: UILabel!
    
    @IBAction func CalculateTip(_ sender: Any) {
        let billAmount = (Double)(txtBill.text!)
        let pctTip = (Double)(txtTip.text!)
        let tipAmount = billAmount! * pctTip!/100
        let tipString = String(format:"%.2f",tipAmount)
        lblTipAmount.text = "$" + tipString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

