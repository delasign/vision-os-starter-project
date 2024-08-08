//
//  SampleVolume.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//


import SwiftUI
import RealityKit
import RealityKitContent

struct SampleVolume: View {
    
    var body: some View {
        Model3D(named: "Scene", bundle: realityKitContentBundle)
    }
}

#Preview(windowStyle: .volumetric) {
    SampleVolume()
}
