//
//  ViewController.swift
//  Prework
//
//  Created by Christian Franklin on 12/29/21.
//

import UIKit

private let defaults = UserDefaults.standard

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalName: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var partySlider: UISlider!
    @IBOutlet weak var pSize: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
                                 
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
                
        if Double(billAmountTextField.text!) != 0.00 {
            calculateTip(super.viewWillAppear)
        }
       
        if defaults.bool(forKey: "switchDark") {
            Settings.sharedSettings.backgroundColor = UIColor.black
            Settings.sharedSettings.textColor = UIColor.white
        } else {
            Settings.sharedSettings.backgroundColor = UIColor.white
            Settings.sharedSettings.textColor = UIColor.black
        }
        
        Darkmode()
        
        if defaults.bool(forKey: "switchParty") {
            partyLabel.isHidden = false
            partySlider.isHidden = false
            pSize.isHidden = false
        } else {
            partyLabel.isHidden = true
            partySlider.isHidden = true
            pSize.isHidden = true
        }
               
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Darkmode()
        billAmountTextField.becomeFirstResponder()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [Settings.sharedSettings.tipPercentage[0], 0.18, 0.2]
        if defaults.bool(forKey: "switchParty") {
            let sliderVal = Double(Int(partySlider.value))
            let tip = (bill / sliderVal) *
            tipPercentages[tipControl.selectedSegmentIndex]
            let total = (bill / sliderVal) + tip
            // Update Tip Amount Label
            tipAmountLabel.text = String(format: "$%.2f", tip)
            // Update Total Amount
            totalLabel.text = String(format: "$%.2f", total)
        } else {
            let tip = bill *
                tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            // Update Tip Amount Label
            tipAmountLabel.text = String(format: "$%.2f", tip)
            // Update Total Amount
            totalLabel.text = String(format: "$%.2f", total)
        }
        
    }
    
    @IBAction func CALC(_ sender: Any) {
        calculateTip(sender)
    }

    @IBAction func UpdatePartyNumber(_ sender: Any) {
        let sliderVal = Int(partySlider.value)
        pSize.text = String(sliderVal)
        calculateTip(sender)
    }
    
    
    func Darkmode() {
        self.view.backgroundColor = Settings.sharedSettings.backgroundColor
        tipAmountLabel.textColor = Settings.sharedSettings.textColor
        totalLabel.textColor = Settings.sharedSettings.textColor
        billLabel.textColor = Settings.sharedSettings.textColor
        totalName.textColor = Settings.sharedSettings.textColor
        //billAmountTextField.backgroundColor = Settings.sharedSettings.textColor
        //billAmountTextField.textColor = Settings.sharedSettings.backgroundColor
        partyLabel.textColor = Settings.sharedSettings.textColor
        tipLabel.textColor = Settings.sharedSettings.textColor
        pSize.textColor = Settings.sharedSettings.textColor
        
        
    }
    
}
