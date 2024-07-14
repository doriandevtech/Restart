//
//  HomeView.swift
//  Restart
//
//  Created by Dorian Emenir on 14/07/2024.
//

// MARK: - IMPORTS
import SwiftUI

// MARK: HomeView
struct HomeView: View {
    // MARK: - PROPERTY
    /// Code safety: The following line of code will be skipped if the program doesn't find the `ONBOARDING` key previously set in the device's permanent storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        } //: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    HomeView()
}
