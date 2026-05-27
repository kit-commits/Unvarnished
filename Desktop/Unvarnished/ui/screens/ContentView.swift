//
//  ContentView.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/26/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            Color(red: 0.82, green: 0.78, blue: 0.94).ignoresSafeArea()
            
            VStack (spacing: 28) {
                Spacer()
                    .frame(height: 40)
                Text("Unvarnished.").font(.system(size: 48, weight: .semibold,  design: .serif)).foregroundColor(Color(red: 0.157, green: 0.157, blue: 0.157))
                
                
                Image("unvarnished-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 230)
                
                
                Text("It gains the more it gives And then it rises with the fall. So hand me that remote, can't you see that all that stuff's a sideshow? - Frou Frou").font(.system(size: 20, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.157, green: 0.157, blue: 0.157))
                    .lineSpacing(4)
                    .padding(.horizontal, 28)
                    
                
                Button("Enter") {
                    // Navigate later
                }
                .font(.system(size: 38, weight: .semibold,  design: .serif))
                .foregroundColor(.white)
                .padding(.horizontal, 44)
                .padding(.vertical, 18)
                .background(Color(red: 0.42, green: 0.36, blue: 0.78))
                .cornerRadius(22)
                .shadow(color: .black.opacity(0.18), radius: 8, x: 0, y: 4)
                
            }
            .padding(.horizontal, 28)
        }
    }
}

#Preview {
    ContentView()
}
