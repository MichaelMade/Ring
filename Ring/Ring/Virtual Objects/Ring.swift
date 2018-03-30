//
//  Ring.swift
//  Ring
//
//  Created by Michael Moore on 3/13/18.
//  Copyright © 2018 Michael Moore. All rights reserved.
//

import Foundation

import Foundation

class Ring: VirtualObject {
    
    override init() {
        super.init(modelName: "ring", fileExtension: "dae", thumbImageFilename: "ring", title: "Ring")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
