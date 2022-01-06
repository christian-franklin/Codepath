//
//  SettingsViewController.swift
//  Prework
//
//  Created by Christian Franklin on 1/1/22.
//

import UIKit
import Foundation

private let defaults = UserDefaults.standard

class Settings {
    // Settings class for setting variables across controllers.
    static let sharedSettings = Settings()
    var backgroundColor = UIColor.white
    var textColor = UIColor.black
    var shouldHide = true
}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaulttipsetting: UISegmentedControl!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var defaultLabel: UILabel!
    @IBOutlet weak var darkmodeLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var partyButton: UISwitch!
    
    
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         self.title = "Settings"
         if defaults.bool(forKey: "switchDark") {
             Settings.sharedSettings.backgroundColor = UIColor.black
             Settings.sharedSettings.textColor = UIColor.white
         } else {
             Settings.sharedSettings.backgroundColor = UIColor.white
             Settings.sharedSettings.textColor = UIColor.black
         }
         self.view.backgroundColor = Settings.sharedSettings.backgroundColor
         defaultLabel.textColor = Settings.sharedSettings.textColor
         darkmodeLabel.textColor = Settings.sharedSettings.textColor
         partyLabel.textColor = Settings.sharedSettings.textColor
         
         if defaults.bool(forKey: "switchDark") {
             switchButton.isOn = true
         } else {
             switchButton.isOn = false
         }
         
         if Settings.sharedSettings.shouldHide == false {
             partyButton.isOn = true
         } else {
             partyButton.isOn = false
         }
         
     }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        defaulttipsetting.selectedSegmentIndex = defaults.integer(forKey: "defaultTip")
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.backgroundColor = Settings.sharedSettings.backgroundColor
        defaultLabel.textColor = Settings.sharedSettings.textColor
        darkmodeLabel.textColor = Settings.sharedSettings.textColor
        partyLabel.textColor = Settings.sharedSettings.textColor
    }

    override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         setDefaults()
         
    }
    
    func setDefaults() {
        let tipPercentages = [0, 1, 2]
        defaults.set(tipPercentages[defaulttipsetting.selectedSegmentIndex], forKey: "defaultTip")

    }
    
    @IBAction func Darkmode(_ sender: Any) {
        defaults.set(switchButton.isOn, forKey: "switchDark")
        if switchButton.isOn {
            Settings.sharedSettings.backgroundColor = UIColor.black
            Settings.sharedSettings.textColor = UIColor.white
        }
        if !switchButton.isOn {
            Settings.sharedSettings.backgroundColor = UIColor.white
            Settings.sharedSettings.textColor = UIColor.black
        }
        self.view.backgroundColor = Settings.sharedSettings.backgroundColor
        defaultLabel.textColor = Settings.sharedSettings.textColor
        darkmodeLabel.textColor = Settings.sharedSettings.textColor
        partyLabel.textColor = Settings.sharedSettings.textColor
    }
    
    @IBAction func PartyOnOff(_ sender: Any) {
        defaults.set(partyButton.isOn, forKey: "switchParty")
        if partyButton.isOn {
            Settings.sharedSettings.shouldHide = false
        }
        if !partyButton.isOn {
            Settings.sharedSettings.shouldHide = true
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
