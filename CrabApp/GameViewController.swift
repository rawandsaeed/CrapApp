//
//  GameViewController.swift
//  CrabApp
//
//  Created by Rawand Saeed on 11/6/18.
//  Copyright © 2018 Rawand Saeed. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var skyView: SKView!
    
    var skscne: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        skscne = CustomScene(size: view.bounds.size)
        skyView.presentScene(skscne)
    }
    
}


