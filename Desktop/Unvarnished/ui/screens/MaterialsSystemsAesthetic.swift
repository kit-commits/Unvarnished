//
//  MaterialsSystemsAesthetic.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/27/26.
//

import SwiftUI

struct MaterialsSystemsAesthetic: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {
                header
                walletCard

                Text("Yarn/Textile/Material Thinking")
                    .font(.system(size: 24, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                recommendationCard

                Spacer()
            }
            .padding(.horizontal, 22)
            .padding(.top, 45)
        }
    }

    var header: some View {
        HStack {
            Text("Your\nWallet")
                .font(.system(size: 42, weight: .semibold, design: .serif))
                .foregroundColor(.black.opacity(0.82))

            Spacer()

            Circle()
                .fill(Color.black.opacity(0.82))
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(.white)
                )

            Text("Add New")
                .font(.system(size: 18, design: .serif))
                .foregroundColor(.black.opacity(0.82))
        }
    }

    var walletCard: some View {
        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
                .frame(width: 148, height: 140)
                .overlay(
                    Text("Materials &\nSystems\nAesthetic")
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                )

            VStack(alignment: .leading, spacing: 12) {
                pill("Suggestions", light: true)
                pill("Expense Review", light: false)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    var recommendationCard: some View {
        VStack(spacing: 20) {
            Text("On Weaving: Anni Albers")
                .font(.system(size: 24, weight: .semibold, design: .serif))

            Text("Systems design disguised as textile philosophy.\nVisual systems interface. A surprising amount of\nmodern interface rhythm weirdly echos in\nher written work.")
                .font(.system(size: 15, design: .serif))
                .multilineTextAlignment(.center)

            VStack(spacing: 18) {
                HStack(spacing: 24) {
                    tag("Structure")
                    tag("Grids")
                    tag("Repetition")
                }

                HStack(spacing: 24) {
                    tag("Utility")
                    tag("Abstraction")
                    tag("Material IQ")
                }
            }
        }
        .foregroundColor(.black.opacity(0.82))
        .padding(.vertical, 24)
        .padding(.horizontal, 18)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
    }

    func pill(_ text: String, light: Bool) -> some View {
        Text(text)
            .font(.system(size: 18, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 164, height: 38)
            .background(light ? Color(red: 0.40, green: 0.39, blue: 0.68) : Color(red: 0.24, green: 0.23, blue: 0.43))
            .cornerRadius(10)
    }

    func tag(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 12, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 90, height: 38)
            .background(Color(red: 0.24, green: 0.23, blue: 0.43))
            .cornerRadius(10)
    }
}

#Preview {
    MaterialsSystemsAesthetic()
}
