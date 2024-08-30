//
//  isXCodePreview.swift
//  VisionOSStarterProject
//
//  Created by Oscar de la Hera Gomez on 8/30/24.
//

import Foundation

func isXCodePreview() -> Bool {
    return ProcessInfo.processInfo.isXCodePreview
}

public extension ProcessInfo {
    
    var isXCodePreview: Bool {
        environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
}
