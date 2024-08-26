//
//  ContentView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/8/24.
//

import SwiftUI
import RealityKit
import RealityKitContent
import ANewPackage

struct ContentView: View {
    @Environment (LanguageCoordinator.self) var languageCoordinator
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: aNewPackageBundle)
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

// Last Attempt at using Preview Provider

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ForEach(LanguageCoordinator().availableLanguages.values.sorted(by: { "\($0)" < "\($1)" }), id: \.self) { language in
//                LocalizableContentView(languageCode: language)
//            }
//            
//        }
//    }
//    
//    struct LocalizableContentView: View {
//        let languageCode: String
//        
//        var body: some View {ContentView()
//                .environment(LanguageCoordinator(languageCode: languageCode))
//                .environment(\.locale, .init(identifier: languageCode))
//        }
//    }
//}

