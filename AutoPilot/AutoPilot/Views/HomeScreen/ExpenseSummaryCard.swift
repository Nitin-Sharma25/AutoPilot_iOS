//
//  ExpenseSummaryCard.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI


struct ExpenseSummaryCard: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 12) {

            Text("This Month")
                .fontWeight(.bold)

            ExpenseRow(title: "Fuel", amount: "₹4,200")

            ExpenseRow(title: "Service", amount: "₹1,500")

            ExpenseRow(title: "Other", amount: "₹800")

            Divider()

            HStack {

                Text("Total")

                Spacer()

                Text("₹6,500")
                    .fontWeight(.bold)
            }
        }
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .glassCard()
    }
}
#Preview {
    ExpenseSummaryCard()
}
