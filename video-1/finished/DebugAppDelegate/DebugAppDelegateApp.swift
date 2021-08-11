//
//  DebugAppDelegateApp.swift
//  DebugAppDelegate
//
//  Created by Studio on 8/3/21.
//

import SwiftUI

@main
struct DebugAppDelegateApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Configure your library here
        
        return true
    }
}
