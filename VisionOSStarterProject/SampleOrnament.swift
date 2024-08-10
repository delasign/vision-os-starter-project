//
//  SampleOrnament.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/10/24.
//


import SwiftUI

struct SampleOrnament: View {
    var body: some View {
        Button("Ornament") {
            debugPrint("Hello World !")
        }
    }
}

#Preview(windowStyle: .automatic) {
    SampleOrnament()
}
