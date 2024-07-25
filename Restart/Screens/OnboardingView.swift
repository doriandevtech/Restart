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
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    } //: ZSTACK
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: CENTER

                Spacer()
                
                // MARK: - FOOTER
                
                ZStack {
                    // PARTS OF THE CUSTOM BUTTON
                    
                    // 1. BACKGROUND (STATIC)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    // 2. CALL-TO-ACTION (STATIC)
                    // 3. CAPSULE (DYNAMIC WIDTH)
                    // 4. CIRCLE (DRAGGABLE)
                } //: FOOTER
                
            } //: VSTACK
        } //: ZSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
