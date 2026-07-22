//
//  ExpensesVehicleCardView.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct ExpenseVehicleCardView: View {

    var body: some View {

        HStack {

            Image("bike")
                .resizable()
                .scaledToFit()
                .frame(width: 150)

            Spacer()

            VStack(alignment: .leading) {
                
                Text("Classic 350").foregroundStyle(.primary)

                Text("This Month")
                    .foregroundColor(.secondary)

                Text("₹2,450")
                    .font(.largeTitle)
                    .bold()

                Text("↑ 18% from last month")
                    .foregroundColor(.green)
            }
        }
        .glassCard()
    }
}

#Preview {
    ExpenseVehicleCardView()
        .padding()
}
