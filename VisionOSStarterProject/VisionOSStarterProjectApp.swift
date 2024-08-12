//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI

@main
struct VisionOSStarterProjectApp: App {
    @State private var currentStyle: ImmersionStyle = .mixed

    var body: some Scene {
        ImmersiveSpace(id: "SampleImmersiveSpaceId") {
            SampleImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .mixed)
    }
}
