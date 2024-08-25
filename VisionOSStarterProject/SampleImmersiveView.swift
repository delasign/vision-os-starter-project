//
//  SampleImmersiveView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SampleImmersiveView: View {
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
        }
    }
}

#Preview(windowStyle: .volumetric) {
    SampleImmersiveView()
}
