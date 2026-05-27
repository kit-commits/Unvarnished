//
//  RunwayEstimatorObligations.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/27/26.
//

import SwiftUI

struct RunwayEstimatorObligations: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Runway\nEstimator:")
                    .font(.system(size: 42, weight: .semibold, design: .serif))
                    .foregroundColor(.black.opacity(0.82))
                    .multilineTextAlignment(.center)

                walletCard

                VStack(spacing: 32) {
                    transactionRow(name: "Mortage Payment", amount: "$1000", date: "Due in 12 Days")
                    transactionRow(name: "Car Insurance", amount: "$200", date: "Due Tomorrow")
                    transactionRow(name: "Medication", amount: "$150", date: "Refill in 4 days")
                    transactionRow(name: "Groceries", amount: "$200", date: "Flexible")
                }

                Spacer()
            }
            .padding(.horizontal, 22)
            .padding(.top, 45)
        }
    }

    var walletCard: some View {
        VStack(spacing: 12) {
            HStack(spacing: 16) {
                runwayButton("Liquid Cash", dark: true)
                runwayButton("Obligations", dark: false)
            }

            HStack(spacing: 16) {
                runwayButton("Next Inflow", dark: true)
                runwayButton("Confidence", dark: true)
            }
        }
        .padding(26)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
    }

    func runwayButton(_ title: String, dark: Bool) -> some View {
        Text(title)
            .font(.system(size: 18, design: .serif))
            .foregroundColor(.white.opacity(0.85))
            .frame(width: 148, height: 38)
            .background(
                dark
                ? Color(red: 0.24, green: 0.23, blue: 0.43)
                : Color(red: 0.40, green: 0.39, blue: 0.68)
            )
            .cornerRadius(10)
    }

    func transactionRow(name: String, amount: String, date: String) -> some View {
        HStack {
            Circle()
                .fill(Color.black.opacity(0.82))
                .frame(width: 52, height: 52)

            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                    .font(.system(size: 24, weight: .semibold, design: .serif))

                Text(amount)
                    .font(.system(size: 18, design: .serif))
            }

            Spacer()

            Text(date)
                .font(.system(size: 13, design: .serif))
                .padding(.top, 24)

            Image(systemName: "chevron.right")
                .font(.system(size: 30, weight: .semibold))
        }
        .foregroundColor(.black.opacity(0.82))
        .padding(.horizontal, 18)
        .frame(height: 74)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.82), lineWidth: 4)
        )
    }
}

#Preview {
    RunwayEstimatorObligations()
}
