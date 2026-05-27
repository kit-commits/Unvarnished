* Moderate */

//
//  ConfidenceVariable.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/27/26.
//

//
//  ConfidenceModerate.swift
//  Unvarnished
//
//  Created by Kaitlin Taylor on 5/27/26.
//

import SwiftUI

struct ConfidenceModerate: View {
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
                stabilityHeader

                VStack(spacing: 32) {
                    stabilityRow(name: "Payroll", filled: 5, label: "Stable")
                    stabilityRow(name: "Government Benefits", filled: 5, label: "Stable")
                    stabilityRow(name: "Retainer", filled: 4, label: "Moderate")
                    stabilityRow(name: "Pension", filled: 5, label: "Stable")
                    stabilityRow(name: "Retirement", filled: 5, label: "Stable")
                }

                Spacer()
            }
            .padding(.horizontal, 22)
            .padding(.top, 45)
        }
    }

    var stabilityHeader: some View {
        HStack(spacing: 28) {
            Text("Stable")
            Text("Moderate").underline()
            Text("Variable")
        }
        .font(.system(size: 20, design: .serif))
        .foregroundColor(.black.opacity(0.82))
        .padding(.top, 8)
    }

    var walletCard: some View {
        VStack(spacing: 12) {
            HStack(spacing: 16) {
                runwayButton("Liquid Cash", dark: true)
                runwayButton("Obligations", dark: true)
            }

            HStack(spacing: 16) {
                runwayButton("Next Inflow", dark: true)
                runwayButton("Confidence", dark: false)
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

    func stabilityRow(name: String, filled: Int, label: String) -> some View {
        HStack {
            Text(name)
                .font(.system(size: 20, design: .serif))
                .foregroundColor(.black.opacity(0.82))
                .frame(width: 110, alignment: .leading)

            HStack(spacing: 2) {
                ForEach(0..<5, id: \.self) { index in
                    Circle()
                        .fill(index < filled ? Color.black.opacity(0.82) : Color.clear)
                        .frame(width: 28, height: 28)
                        .overlay(
                            Circle()
                                .stroke(Color.black.opacity(0.82), lineWidth: 4)
                        )
                }
            }

            Spacer()

            Text(label)
                .font(.system(size: 14, design: .serif))
                .foregroundColor(.black.opacity(0.82))
                .multilineTextAlignment(.center)
                .frame(width: 70)
        }
    }
}

#Preview {
    ConfidenceModerate()
}
