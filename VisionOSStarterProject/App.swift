//
//  VisionOSStarterProjectApp.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI

@main
struct VisionApp: App {
    @State private var languageCoordinator = LanguageCoordinator()
    let styleguide = Styleguide()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(languageCoordinator)
        }
    }
}
