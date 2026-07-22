//
//  RecentExpensesView.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct RecentExpensesView: View {

    var body: some View {

        VStack(spacing: 13) {

            HStack {
                Text("Recent Expenses")
                    .font(.headline)
                
                Spacer()

                Button("See All") {

                }
            }

            Divider()

            ExpenseRowView(
                icon: "fuelpump.fill",
                title: "Fuel Refill",
                subtitle: "IndianOil",
                amount: "₹600",
                color: .green
            )

            ExpenseRowView(
                icon: "wrench.and.screwdriver.fill",
                title: "Engine Oil Change",
                subtitle: "Royal Enfield",
                amount: "₹800",
                color: .blue
            )

            ExpenseRowView(
                icon: "cart.fill",
                title: "Chain Lube",
                subtitle: "MotoCare",
                amount: "₹150",
                color: .purple
            )

            ExpenseRowView(
                icon: "sparkles",
                title: "Bike Wash",
                subtitle: "CleanRide",
                amount: "₹120",
                color: .orange
            )
        }
        .glassCard()
    }
}

struct ExpenseRowView: View {

    let icon: String
    let title: String
    let subtitle: String
    let amount: String
    let color: Color

    var body: some View {

        HStack {

            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)
                .frame(width: 45)

            VStack(alignment: .leading) {

                Text(title)

                Text(subtitle)
                    .foregroundColor(.secondary)
                    .font(.caption)
            }

            Spacer()

            Text(amount)
                .bold()

            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
        .padding(.vertical,12)
    }
}

#Preview{
    RecentExpensesView()
}
