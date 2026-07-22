//
//  ExpenseCategoryCardView.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//
import SwiftUI


struct ExpenseCategoryGridView: View {

    var body: some View {

        VStack(spacing: 12) {

            ExpenseCategoryCardView(
                icon: "fuelpump.fill",
                title: "Fuel",
                amount: "₹1,200",
                color: .green
            )

            ExpenseCategoryCardView(
                icon: "wrench.and.screwdriver.fill",
                title: "Service",
                amount: "₹800",
                color: .blue
            )

            ExpenseCategoryCardView(
                icon: "cart.fill",
                title: "Accessories",
                amount: "₹450",
                color: .purple
            )

            ExpenseCategoryCardView(
                icon: "ellipsis",
                title: "Others",
                amount: "₹300",
                color: .orange
            )
        }.glassCard()
    }
}


struct ExpenseCategoryCardView: View {

    let icon: String
    let title: String
    let amount: String
    let color: Color

    var body: some View {

        VStack(spacing: 16) {

            Image(systemName: icon)
                .font(.title)
                .foregroundColor(color)

            Text(title)

            Text(amount)
                .font(.title3)
                .bold()

            Rectangle()
                .fill(color)
                .frame(height: 4)
        }
        .glassCard()
    }
}


#Preview{
    ExpenseCategoryGridView()
}
