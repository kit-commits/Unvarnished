//
//  UnvarnishedOnboarding.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/26/26.
//

import SwiftUI

struct UnvarnishedOnboarding: View {
    var body: some View {
        
        
        ZStack {
            Color(red: 0.82, green: 0.78, blue: 0.94).ignoresSafeArea()
            
            VStack (spacing: 28) {
                Spacer()
                    .frame(height: 40)
                Text("Unvarnished.").font(.system(size: 42, weight: .semibold,  design: .serif)).foregroundColor(Color(red: 0.157, green: 0.157, blue: 0.157))
                
                
                Image("unvarnished-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 230)
                    
                Text("Just take an honest and quiet assessment of the following to find the blockage within your freelance flow:")
                    .frame(width: 260)
                    .font(.system(size: 18, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.157, green: 0.157, blue: 0.157))
                    .lineSpacing(4)
                    .padding(.horizontal, 28)
              
                MenuButton(title: "Transactions")
                MenuButton(title: "Subscriptions")
                MenuButton(title: "Monthly Budget")
                
            }
            .padding(.horizontal, 28)
        }
    }
}

struct MenuButton: View {
    var title: String
    
    var body: some View {
        
        Button(title) {
            
        }
        .font(.system(size: 28, weight: .semibold,  design: .serif))
        .foregroundColor(.white)
        .frame(width: 340, height: 60)
        .background(Color(red: 0.42, green: 0.36, blue: 0.78))
        .cornerRadius(22)
        .shadow(color: .black.opacity(0.18), radius: 8, x: 0, y: 4)
        
    }
}

#Preview {
    UnvarnishedOnboarding()
}
