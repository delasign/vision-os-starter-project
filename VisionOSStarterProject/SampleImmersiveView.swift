//
//  SampleImmersiveView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SampleImmersiveView: View {
    var body: some View {
        VStack {
            RealityView { content in
                if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                    // Set its Position
                    scene.position = SIMD3<Float>(0, 1, -1)
                    // Set its Scale
                    scene.scale = SIMD3<Float>(2,2,2)
                    scene.transform.rotation = simd_quatf(angle: .pi, axis: SIMD3<Float>(0,1,1))
                    content.add(scene)
                    
                    // Determine the transform to animate to.
                    var transform = scene.transform
                    transform.translation = SIMD3<Float>(0,0,-1)
                    transform.scale = SIMD3<Float>(0.5,0.5,0.5)
                    
                    // Create the rotate on its y axis animation
                    let animateScaleAndTranslationBackAndForth = FromToByAnimation(from: scene.transform,
                                                                      to:transform,
                                                                        duration: 2,
                                                                        timing: .linear,
                                                                    bindTarget: .transform,
                                                                      repeatMode: .autoReverse)
                    
                    // Set the Animation
                    if let animation = try? AnimationResource.generate(with: animateScaleAndTranslationBackAndForth) {
                        scene.playAnimation(animation)
                    }
                }
            }
        }
    }
}

#Preview(windowStyle: .volumetric) {
    SampleImmersiveView()
}
