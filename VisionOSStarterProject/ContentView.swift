//
//  ContentView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        RealityView { content in
            if let fire = try? await Entity(named: "Fire", in: realityKitContentBundle) {
                content.add(fire)
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
