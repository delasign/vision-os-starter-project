//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI

@main
struct VisionOSStarterProjectApp: App {
    
    @State private var model = AppModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(model)
        }
        
        WindowGroup(id: AppEntityIdentifiers.countWindow) {
            CountView().environment(model)
        }
    }
}
