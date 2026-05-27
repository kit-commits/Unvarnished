import SwiftUI

struct DrySpellExpenseReview: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.63, blue: 0.84)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 24) {

                HStack(alignment: .center) {
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

                walletCard

                HStack {
                    Text("Recent Transactions")
                        .font(.system(size: 24, weight: .semibold, design: .serif))

                    Spacer()

                    Text("See All")
                        .font(.system(size: 22, design: .serif))
                        .underline()
                }
                .foregroundColor(.black.opacity(0.82))

                VStack(spacing: 32) {
                    transactionRow(name: "Kinokuniya", amount: "$400", date: "May 12, 2026")
                    transactionRow(name: "Origami Paper", amount: "$200", date: "May 16, 2026")
                    transactionRow(name: "Jerry’s", amount: "$150", date: "May 7, 2026")
                }

                Spacer()
            }
            .padding(.horizontal, 22)
            .padding(.top, 45)
        }
    }

    var walletCard: some View {
        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.24, green: 0.23, blue: 0.43))
                .frame(width: 148, height: 140)
                .overlay(
                    VStack(spacing: 4) {
                        Text("$550")
                            .font(.system(size: 23, design: .serif))
                        Text("Furniture")
                            .font(.system(size: 26, weight: .semibold, design: .serif))
                    }
                    .foregroundColor(.white.opacity(0.9))
                )

            VStack(alignment: .leading, spacing: 12) {
                Text("Suggestions")
                    .font(.system(size: 18, design: .serif))
                    .foregroundColor(.white.opacity(0.85))
                    .frame(width: 164, height: 38)
                    .background(Color(red: 0.40, green: 0.39, blue: 0.68))
                    .cornerRadius(10)

                Text("Expense Review")
                    .font(.system(size: 18, design: .serif))
                    .foregroundColor(.white.opacity(0.85))
                    .frame(width: 164, height: 38)
                    .background(Color(red: 0.24, green: 0.23, blue: 0.43))
                    .cornerRadius(10)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.82))
        .cornerRadius(22)
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
    DrySpellExpenseReview()
}
