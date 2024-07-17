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
        ZStack {
            Color(.colorBlue)
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                // MARK: - HEADER
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                    
                    Text("""
                    It's not much we can give but
                    how much love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                // MARK: - CONTENT
                
                // MARK: - FOOTER
                
            } //: VSTACK
        } //: ZSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
