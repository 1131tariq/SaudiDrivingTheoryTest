//
//  LanguageManager.swift
//  SaudiDrivingTheoryTest
//
//  Created by Tareq Batayneh on 11/01/2026.
//

import Foundation
import SwiftUI
import Combine

/// Manages the in‑app language and forces SwiftUI updates when it changes.
class LanguageManager: ObservableObject {
    @AppStorage("language") var language: String = "en" {
        didSet {
            // Update the bundle so NSLocalizedString(…, bundle: .localized) uses the right lproj
            LocalizedBundle.setLanguage(language)
            objectWillChange.send()
        }
    }
    
    init() {
        // Ensure bundle is set on launch
        LocalizedBundle.setLanguage(language)
    }
}

