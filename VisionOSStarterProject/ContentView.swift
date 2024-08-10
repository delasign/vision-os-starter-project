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
    
    @Environment (\.openWindow) var openWindow
    @Environment (\.dismissWindow) var dismissWindow
    
    @Environment (AppModel.self) var model
    
    var body: some View {
        VStack {
            Text("Controller").font(.title)
            HStack {
                Button {
                    model.count -= 1
                } label: {
                    Label(
                        title: { },
                        icon: { Image(systemName: "minus") }
                    )
                }
                Button {
                    model.count += 1
                } label: {
                    Label(
                        title: { },
                        icon: { Image(systemName: "plus") }
                    )
                }
            }
            
            Button(model.countViewIsOpen ? "Close CountView" : "Open CountView") {
                model.countViewIsOpen ? dismissWindow(id: AppEntityIdentifiers.countWindow) : openWindow(id:AppEntityIdentifiers.countWindow)
                model.countViewIsOpen.toggle()
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
