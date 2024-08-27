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
            if let element = try? await Entity(named: "Shaded_Bread", in: realityKitContentBundle) {
                
                // Add the Scene
                content.add(element)
                
                guard let root = element.children.first else { return }
                
                // Gather the bread
                guard let brioche = root.children.first(where: { $0.name == "Brioche_Bread"}) else { return }
                
                // Get its component
                guard var modelComponent = brioche.components[ModelComponent.self],
                      var shaderGraphMaterial = modelComponent.materials.first as? ShaderGraphMaterial else { return }
                
                // Alter the shader graph parameter
                do {
                    try shaderGraphMaterial.setParameter(name: "Constant", value: .float(10))
                                modelComponent.materials = [shaderGraphMaterial]
                    brioche.components.set(modelComponent)
                } catch {
                    
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
