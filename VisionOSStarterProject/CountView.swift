//
//  CountView.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/10/24.
//

import Foundation
import SwiftUI

struct CountView: View {
    @Environment (AppModel.self) var model
    var body: some View {
        Text("Count: \(model.count)")
    }
}
