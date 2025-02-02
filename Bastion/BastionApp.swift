//
//  BastionApp.swift
//  Bastion
//
//  Created by Renee Sullivan on 2/2/2025.
//

import SwiftUI

@main
struct BastionApp: App {
    init() {
        _ = DatabaseManager.shared // Initialize database
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
