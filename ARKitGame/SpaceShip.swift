//
//  SpaceShip.swift
//  ARKitGame
//
//  Created by Victor Hong on 23/06/2017.
//  Copyright © 2017 Victor Hong. All rights reserved.
//

import ARKit

class SpaceShip: SCNNode {
    
    func loadModel() {
        
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else {
            return
        }
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
        
    }
}
