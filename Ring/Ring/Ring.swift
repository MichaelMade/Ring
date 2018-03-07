//
//  Ring.swift
//  Ring
//
//  Created by Michael Moore on 3/7/18.
//  Copyright © 2018 Michael Moore. All rights reserved.
//

import Foundation
import SceneKit

class Candle: VirtualObject, ReactsToScale {
    
    override init() {
        super.init(modelName: "ring", fileExtension: "scn")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func reactToScale() {
        // Update the size of the flame
        let flameNode = self.childNode(withName: "flame", recursively: true)
        let particleSize: Float = 0.018
        flameNode?.particleSystems?.first?.reset()
        flameNode?.particleSystems?.first?.particleSize = CGFloat(self.scale.x * particleSize)
    }
}
