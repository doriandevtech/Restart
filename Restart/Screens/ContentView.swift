//
//  ContentView.swift
//  Restart
//
//  Created by Dorian Emenir on 13/07/2024.
//

// MARK: - Imports
import SwiftUI

// MARK: - ContentView
struct ContentView: View {
    
    // MARK: - Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
