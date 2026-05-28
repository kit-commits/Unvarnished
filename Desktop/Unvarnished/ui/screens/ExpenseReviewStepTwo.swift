//
//  ExpenseReviewStepTwo.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/28/26.
//

import SwiftUI

struct ExpenseReviewStepTwo: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Your Wallet")
                    .font(.system(size: 46, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))

                walletCard
                stepBar
                headerRow
                receiptCard
                qualificationCard

                Spacer()
            }
            .padding(.horizontal, 12)
            .padding(.top, 28)
        }
    }

    var walletCard: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
                .frame(width: 148, height: 88)

            VStack(spacing: 12) {
                walletPill("Suggestions", active: false)
                walletPill("Expense Review", active: true)
            }
        }
        .padding(26)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    var stepBar: some View {
        HStack(spacing: 12) {
            pill("Step One", active: false)
            pill("Step Two", active: true)
            pill("Step Three", active: false)
        }
        .padding(.horizontal, 14)
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .background(Color.black.opacity(0.82))
        .cornerRadius(24)
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

    var qualificationCard: some View {
        VStack(spacing: 18) {
            Text("Why This Might Qualify:")
                .font(.system(size: 24, weight: .semibold, design: .serif))

            Text("Uploaded Receipt Shows Evidence Of:")
                .font(.system(size: 14, design: .serif))

            VStack(alignment: .leading, spacing: 4) {
                Text("• Education/Professional Development")
                Text("• Client Presentation Materials")
                Text("• Production Materials")
            }
            .font(.system(size: 14, design: .serif))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 46)

            HStack {
                Text("A+")
                    .font(.system(size: 18, design: .serif))

                Spacer()

                Text("Business Use Confidence")
                    .font(.system(size: 14, design: .serif))
            }

            HStack {
                Text("B+")
                    .font(.system(size: 18, design: .serif))

                Spacer()

                Text("Documentation Strength")
                    .font(.system(size: 14, design: .serif))
            }
        }
        .foregroundColor(.black.opacity(0.82))
        .padding(26)
        .frame(maxWidth: .infinity)
        .frame(height: 276)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
        .padding(.horizontal, 10)
    }

    func walletPill(_ title: String, active: Bool) -> some View {
        Text(title)
            .font(.system(size: 17, design: .serif))
            .foregroundColor(.white.opacity(0.88))
            .frame(width: 164, height: 42)
            .background(active ? activePurple : darkPurple)
            .cornerRadius(12)
    }

    func pill(_ title: String, active: Bool) -> some View {
        Text(title)
            .font(.system(size: 16, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 104, height: 36)
            .background(active ? activePurple : darkPurple)
            .cornerRadius(10)
    }

    var darkPurple: Color {
        Color(red: 0.24, green: 0.23, blue: 0.43)
    }

    var activePurple: Color {
        Color(red: 0.40, green: 0.39, blue: 0.68)
    }
}

#Preview {
    ExpenseReviewStepTwo()
}
