//
//  SampleImmersiveView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/9/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

@MainActor
struct SampleImmersiveView: View {
    var body: some View {
        VStack {
            RealityView { content in
                if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                    // Set its Position
                    scene.position = SIMD3<Float>(0, 1, -1)
                    // Set its Scale
                    scene.scale = SIMD3<Float>(2,2,2)
                    content.add(scene)
                    
                    // Determine the transform to animate to.
                    var transform = scene.transform
                    let yAxis = SIMD3<Float>(0, 1, 0) // Y-axis
                    let rotationAmount = simd_quatf(angle: .pi, axis: yAxis)
                    transform.rotation *= rotationAmount
                    
                    // Create the rotate on its y axis animation
                    let rotateOnItsYAxisAnimation = FromToByAnimation(from: scene.transform,
                                                                      to:transform,
                                                                        duration: 2,
                                                                        timing: .linear,
                                                                    bindTarget: .transform,
                                                                      repeatMode: .repeat)
                    
                    // Set the Animation
                    if let animation = try? AnimationResource.generate(with: rotateOnItsYAxisAnimation) {
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
