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
            OpenAndCloseWindowButton(windowName: "Window One", windowId: AppEntityIdentifiers.windowOne)
            OpenAndCloseWindowButton(windowName: "Window Two", windowId: AppEntityIdentifiers.windowTwo)
            OpenAndCloseWindowButton(windowName: "Volume", windowId: AppEntityIdentifiers.volumeOne)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
