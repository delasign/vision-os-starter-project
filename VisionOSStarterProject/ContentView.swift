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
    @Environment(\.openWindow) private var openWindow
    
    @Environment(\.dismissWindow) private var dismissWindow
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Window Tutorial")
            Button("Open A Window One") {
                openWindow(id: AppEntityIdentifiers.windowOne)
            }
            Button("Open A Window Two") {
                openWindow(id: AppEntityIdentifiers.windowTwo)
            }
            Button("Open A Volume") {
                openWindow(id: AppEntityIdentifiers.volumeOne)
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
