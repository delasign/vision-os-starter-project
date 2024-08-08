//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI

@main
struct VisionOSStarterProjectApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        WindowGroup (id: AppEntityIdentifiers.windowOne) {
            SampleView(copy: "Window One")
        }
        WindowGroup(id: AppEntityIdentifiers.windowTwo) {
            SampleView(copy: "Window Two")
        }
        
        WindowGroup(id: AppEntityIdentifiers.volumeOne) {
            SampleVolume()
        }.defaultSize(width: 0.1, height: 0.1, depth: 0.1, in: .meters)
            .windowStyle(.volumetric)
    }
}
