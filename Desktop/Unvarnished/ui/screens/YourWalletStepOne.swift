//
//  YourWalletStepOne.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/27/26.
//

import SwiftUI

struct ExpenseReviewSteps: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Your Wallet")
                    .font(.system(size: 46, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                walletCard
                stepBar
                quoteText
                headerRow

                receiptCard
                projectCard
                uploadButton

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.top, 28)
        }
    }

    var quoteText: some View {
        Text("Potentially deductible when materially connected to professional work.")
            .font(.system(size: 15, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(.black.opacity(0.82))
            .padding(.top, 2)
            .padding(.bottom, 18)
            .padding(.horizontal, 40)
    }

    var headerRow: some View {
        HStack {
            Text("Recent Transactions")
                .font(.system(size: 24, weight: .semibold, design: .serif))

            Spacer()

            Text("See All")
                .font(.system(size: 24, design: .serif))
                .underline()
        }
        .foregroundColor(.black.opacity(0.82))
    }

    var walletCard: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
                .frame(width: 148, height: 88)

            VStack(spacing: 12) {
                pill("Suggestions", active: false)
                pill("Expense Review", active: true)
            }
        }
        .padding(26)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    var stepBar: some View {
        HStack(spacing: 12) {
            pill("Step One", active: true)
            pill("Step Two", active: false)
            pill("Step Three", active: false)
        }
        .padding(.horizontal, 14)
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .background(Color.black.opacity(0.82))
        .cornerRadius(24)
    }

    func pill(_ title: String, active: Bool) -> some View {
        Text(title)
            .font(.system(size: 16, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 104, height: 36)
            .background(
                active
                    ? Color(red: 0.40, green: 0.39, blue: 0.68)
                    : Color(red: 0.24, green: 0.23, blue: 0.43)
            )
            .cornerRadius(10)
    }

    var receiptCard: some View {
        HStack(alignment: .top, spacing: 18) {
            Circle()
                .fill(Color.black.opacity(0.82))
                .frame(width: 52, height: 52)
                .padding(.top, 16)

            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Kinokuniya")
                        .font(.system(size: 25, weight: .semibold, design: .serif))

                    Spacer()

                    Text("May 12, 2026")
                        .font(.system(size: 13, design: .serif))
                }

                HStack {
                    Text("$150")
                        .font(.system(size: 20, design: .serif))

                    Spacer()

                    Text("Typography/Reference Books")
                        .font(.system(size: 13, design: .serif))
                }

                HStack {
                    Text("$250")
                        .font(.system(size: 20, design: .serif))

                    Spacer()

                    Text("Sketchbooks/Markers")
                        .font(.system(size: 13, design: .serif))
                }
            }
            .padding(.top, 18)
        }
        .foregroundColor(.black.opacity(0.82))
        .padding(18)
        .frame(height: 138)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
        .padding(.horizontal, 10)
    }

    var projectCard: some View {
        VStack(spacing: 10) {
            Text("Project : Tokyo Visual Systems.")
                .font(.system(size: 23, weight: .semibold, design: .serif))

            Text("Short-form YouTube documentary/visual essay")
                .font(.system(size: 15, design: .serif))
        }
        .foregroundColor(.black.opacity(0.82))
        .frame(maxWidth: .infinity)
        .frame(height: 92)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
        .padding(.horizontal, 10)
    }

    var uploadButton: some View {
        Button {
            // upload action
        } label: {
            Text("Photo Receipt Upload")
                .font(.system(size: 20, design: .serif))
                .foregroundColor(.white.opacity(0.85))
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(Color(red: 0.40, green: 0.39, blue: 0.68))
                .cornerRadius(20)
        }
        .padding(.horizontal, 28)
        .padding(.top, 12)
    }
}

#Preview {
    ExpenseReviewSteps()
}
