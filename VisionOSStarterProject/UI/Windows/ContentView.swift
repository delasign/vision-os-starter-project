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
    @Environment (LanguageCoordinator.self) var languageCoordinator
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Styleguide.Title(languageCoordinator.currentContent.sample.sampleString)
            Styleguide.Body(languageCoordinator.currentContent.sample.sampleBody)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(LanguageCoordinator(languageCode: "en"))
        .environment(\.locale, .init(identifier: "en"))
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(LanguageCoordinator(languageCode: "es"))
        .environment(\.locale, .init(identifier: "es"))
}


