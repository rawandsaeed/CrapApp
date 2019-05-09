//
//  CustomScene.swift
//  CrabApp
//
//  Created by Rawand Saeed on 11/7/18.
//  Copyright © 2018 Rawand Saeed. All rights reserved.
//

import SpriteKit

class CustomScene: SKScene{
    
    let crab = SKSpriteNode()
    
    // add and center child, initialzing sequence
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(crab)
        crab.loadTextures(named: "HappyCrab", forKey: SKSpriteNode.textureKey)
        crab.position = CGPoint(x: frame.midX, y: frame.midY)
    }
    
    // Move to touch
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //fetch a touch or leave
        guard !touches.isEmpty, let touch = touches.first else {return}
        
        //Retrieve position
        let position = touch.location(in: self)
        
        //Create move action
        let actionDuration = 1.0
        let moveAction = SKAction.move(to: position, duration: actionDuration)
        
        let rollAction = SKAction.rotate(byAngle: CGFloat.pi*2, duration: actionDuration)
        let zoomAction = SKAction.scale(by: 1.3, duration: 0.3)
        let unzoomAction = SKAction.scale(to: 1.0, duration: 1.0)
        
        switch Model.shared.shouldZoom {
        case false:
            crab.run(moveAction)
        case true:
            let sequenceAction = SKAction.sequence([zoomAction, moveAction, unzoomAction])
            crab.run(sequenceAction)
        }
        
        if Model.shared.shouldRoll{
            crab.run(rollAction)
        }
        
    }
}
