//
//  SampleView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//


import SwiftUI
import RealityKit
import RealityKitContent

struct SampleView: View {
    
    var copy: String
    
    var body: some View {
        VStack {
            Text(copy)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    SampleView(copy: "Sample")
}
