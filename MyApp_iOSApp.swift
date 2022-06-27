//
//  MyApp_iOSApp.swift
//  PokeTinder
//
//  Created by MAC31 on 16/06/22.
//

import SwiftUI

@main
struct MyApp_iOS: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var appState: AppState = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            case .signIn:
                SignInView()
                    .environmentObject(appState)
            }
        }
    }
    
    
}
