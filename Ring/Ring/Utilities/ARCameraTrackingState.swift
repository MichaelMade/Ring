//
//  ARCameraTrackingState.swift
//  Ring
//
//  Created by Michael Moore on 2/20/18.
//  Copyright © 2018 Michael Moore. All rights reserved.
//

import Foundation
import ARKit

extension ARCamera.TrackingState {
    var presentationString: String {
        switch self {
        case .notAvailable:
            return "TRACKING UNAVAILABLE"
        case .normal:
            return "TRACKING NORMAL"
        case .limited(let reason):
            switch reason {
            case .excessiveMotion:
                return "TRACKING LIMITED\nToo much camera movement"
            case .insufficientFeatures:
                return "TRACKING LIMITED\nNot enough surface detail"
            case .initializing:
                return "TRACKING INITIALIZING"
            case .relocalizing:
                return "RELOCALIZING"
            }
        }
    }
}
