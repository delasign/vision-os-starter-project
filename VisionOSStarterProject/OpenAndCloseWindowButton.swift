//
//  OpenAndCloseWindowButton.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/9/24.
//


import SwiftUI
import RealityKit
import RealityKitContent

struct OpenAndCloseWindowButton: View {
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    var windowName: String
    var windowId: String
    @State private var isOn = false
    
    var body: some View {
        Button(isOn ? "Close \(windowName)" : "Open \(windowName)") {
            // Open / Dismiss
            isOn ? dismissWindow(id: windowId) : openWindow(id: windowId)
            // Toggle
            isOn.toggle()
        }
    }
}

#Preview(windowStyle: .automatic) {
    OpenAndCloseWindowButton(windowName: "Window", windowId: "")
}
