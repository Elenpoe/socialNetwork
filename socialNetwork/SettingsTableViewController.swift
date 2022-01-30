//
//  SettingsTableViewController.swift
//  socialNetwork
//
//  Created by Helen Poe on 30.01.2022.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    let nameKey = "nameKey"
    let soundKey = "soundKey"
    let volKey = "volKey"
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var soundSwitchOutlet: UISwitch!
    @IBOutlet weak var volSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSettings()
    }
    
    func loadSettings(){
        if let name = UserDefaults.standard.string(forKey: nameKey){
            textFieldOutlet.text = name
        }
        soundSwitchOutlet.isOn = UserDefaults.standard.bool(forKey: soundKey)
        volSliderOutlet.value = UserDefaults.standard.float(forKey: volKey)
    }
    
    @IBAction func textFieldAction(_ sender: UITextField) {
        if (sender.text != nil){
            UserDefaults.standard.set(sender.text!, forKey: nameKey)
        }
    }
    
    @IBAction func soundSwitchAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
    }
    
    @IBAction func volSliderAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volKey)
    }
}
