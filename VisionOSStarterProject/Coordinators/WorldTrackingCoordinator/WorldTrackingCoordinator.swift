//
//  WorldTrackingCoordinator.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/25/24.
//

import Foundation
import SwiftUI
import ARKit

@Observable
class WorldTrackingCoordinator {
    static let identifier: String = "[WorldTrackingCoordinator]"
    static let shared: WorldTrackingCoordinator = WorldTrackingCoordinator()
    
    var planeTrackingIsSupported: Bool {
        PlaneDetectionProvider.isSupported
    }
    
    var worldTrackingIsSupported: Bool {
        WorldTrackingProvider.isSupported
    }
    
    var handTrackingIsSupported: Bool {
        HandTrackingProvider.isSupported
    }
    
    var imageTrackingIsSupported: Bool {
        ImageTrackingProvider.isSupported
    }
    
    
    init() {
        debugPrint("\(WorldTrackingCoordinator.identifier) World tracking is supported : \(worldTrackingIsSupported)")
        debugPrint("\(WorldTrackingCoordinator.identifier) Plane tracking is supported : \(planeTrackingIsSupported)")
        debugPrint("\(WorldTrackingCoordinator.identifier) Hand tracking is supported : \(handTrackingIsSupported)")
        debugPrint("\(WorldTrackingCoordinator.identifier) Image tracking is supported : \(imageTrackingIsSupported)")
    }
}
