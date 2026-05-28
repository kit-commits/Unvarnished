//
//  NewExpenseReview.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/28/26.
//

import SwiftUI

struct DocumentationBuilderView: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Your Wallet")
                    .font(.system(size: 44, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                walletCard

                stepTabs

                Text("Documentation Builder")
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                projectCard

                Text("Work Photos/Samples:")
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                photoRow

                Spacer()

                exportButton
            }
            .padding(.horizontal, 12)
            .padding(.top, 28)
            .padding(.bottom, 38)
        }
    }

    var walletCard: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
                .frame(width: 148, height: 88)

            VStack(spacing: 12) {
                pill("Suggestions", light: false)
                pill("Tax Write Offs", light: true)
            }
        }
        .padding(26)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    var stepTabs: some View {
        HStack(spacing: 22) {
            tab("Step One")
            tab("Step Two")
            tab("Step Three")
        }
        .padding(.horizontal, 16)
        .frame(height: 38)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    var projectCard: some View {
        VStack(spacing: 10) {
            Text("Project : Tokyo Visual Systems.")
                .font(.system(size: 25, weight: .semibold, design: .serif))
                .foregroundColor(.black.opacity(0.82))

            Text("Short-form YouTube documentary/visual essay\nOrigami paper used for prototype packaging\nconcepts for early pitch. Reference material.")
                .font(.system(size: 14, design: .serif))
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.82))
        }
        .padding(.vertical, 18)
        .padding(.horizontal, 12)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
        .padding(.horizontal, 10)
    }

    var photoRow: some View {
        HStack(spacing: 12) {
            photoBox
            photoBox
            photoBox
        }
        .frame(maxWidth: .infinity)
    }

    var photoBox: some View {
        RoundedRectangle(cornerRadius: 9)
            .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
            .frame(width: 148, height: 112)
    }

    var exportButton: some View {
        Text("Export For Accountant")
            .font(.system(size: 20, weight: .semibold, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 320, height: 78)
            .background(Color(red: 0.40, green: 0.39, blue: 0.68))
            .cornerRadius(22)
    }

    func pill(_ text: String, light: Bool) -> some View {
        Text(text)
            .font(.system(size: 19, design: .serif))
            .foregroundColor(.white.opacity(0.9))
            .frame(width: 148, height: 38)
            .background(light ? Color(red: 0.40, green: 0.39, blue: 0.68) : Color(red: 0.24, green: 0.23, blue: 0.43))
            .cornerRadius(10)
    }

    func tab(_ text: String) -> some View {
        Text(text)
            .font(.system(size: 16, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 100, height: 28)
            .background(Color(red: 0.24, green: 0.23, blue: 0.43))
            .cornerRadius(10)
    }
}

#Preview {
    DocumentationBuilderView()
}
