//
//  OnboardingView.swift
//  Restart
//
//  Created by Dorian Emenir on 14/07/2024.
//


// MARK: - IMPORTS
import SwiftUI

// MARK: - OnboardingView
struct OnboardingView: View {
    // MARK: - PROPERTY
    /// Code safety: The following line of code will be skipped if the program doesn't find the `ONBOARDING` key previously set in the device's permanent storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }, label: {
                Text("Start")
            })
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
