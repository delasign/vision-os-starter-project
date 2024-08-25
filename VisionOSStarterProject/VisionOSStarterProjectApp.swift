//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI
import ARKit

@main
struct VisionOSStarterProjectApp: App {
    @State private var currentStyle: ImmersionStyle = .mixed
    private let worldTrackingCoordinator: WorldTrackingCoordinator = WorldTrackingCoordinator.shared

    var body: some Scene {
        ImmersiveSpace(id: "SampleImmersiveSpaceId") {
            SampleImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .mixed)
    }
}
