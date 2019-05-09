//
//  SettingsViewController.swift
//  CrabApp
//
//  Created by Rawand Saeed on 11/6/18.
//  Copyright © 2018 Rawand Saeed. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    
    @IBAction func toggleRoll(_ sender: UISwitch) {
        
        Model.shared.shouldRoll = sender.isOn
    }
    

    @IBAction func toggleZoom(_ sender: UISwitch) {
        
        Model.shared.shouldZoom = sender.isOn
    }
}
