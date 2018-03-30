//
//  Diamond.swift
//  Ring
//
//  Created by Michael Moore on 3/30/18.
//  Copyright © 2018 Michael Moore. All rights reserved.
//

import Foundation

class Diamond: VirtualObject {
    
    override init() {
        super.init(modelName: "diamond", fileExtension: "dae", thumbImageFilename: "diamond", title: "Diamond")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
