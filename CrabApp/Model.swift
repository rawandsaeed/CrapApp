//
//  Model.swift
//  CrabApp
//
//  Created by Rawand Saeed on 11/6/18.
//  Copyright © 2018 Rawand Saeed. All rights reserved.
//

import Foundation

class Model{
    // An instance of the Model Class
    static var shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
