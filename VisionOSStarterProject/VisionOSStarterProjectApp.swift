//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI

@main
struct VisionOSStarterProjectApp: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Display a fully immersive space.
        ImmersiveSpace(id: "SampleImmersiveSpaceId") {
            SampleImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
