//
//  CertPathNetworkingApp.swift
//  CertPathNetworking
//
//  Created by Jay Chestnut on 6/9/26.
//

import SwiftUI

@main
struct CertPathNetworkingApp: App {
    
    @StateObject private var authManager = AuthManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
    }
}
