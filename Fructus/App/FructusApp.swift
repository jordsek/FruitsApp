//
//  FructusApp.swift
//  Fructus
//
//  Created by Jordan Isac on 12/05/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                //ContentView()
            } else {
                ContentView()
                //OnboardingView()
            }
        }
    }
}
