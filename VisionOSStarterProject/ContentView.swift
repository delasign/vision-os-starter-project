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
    @Environment (\.openImmersiveSpace) var openImmersiveSpace
    @Environment (\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @State private var immersiveSpaceIsOpen: Bool = false
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")
            Button(immersiveSpaceIsOpen ? "Close Space" : "Open Space") {
                Task {
                    switch immersiveSpaceIsOpen {
                    case true:
                        await dismissImmersiveSpace()
                        immersiveSpaceIsOpen.toggle()
                        break
                    case false:
                        let result = await openImmersiveSpace(id: "SampleImmersiveSpaceId")
                                if case .error = result {
                                    print("An error occurred")
                                } else {
                                    immersiveSpaceIsOpen.toggle()
                                }
                        break
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
