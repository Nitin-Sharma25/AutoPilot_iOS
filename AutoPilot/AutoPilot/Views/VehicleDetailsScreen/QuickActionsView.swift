//
//  QuickActionsView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct QuickActionsView: View {

    var body: some View {

        

            VStack(alignment: .leading) {

                Text("Quick Actions")
                    .fontWeight(.semibold)

                HStack {

                    ActionButton(
                        icon: "list.clipboard",
                        title: "Service\nHistory"
                    )

                    ActionButton(
                        icon: "doc.text",
                        title: "Documents"
                    )

                    ActionButton(
                        icon: "indianrupeesign.circle",
                        title: "Expenses"
                    )

                    ActionButton(
                        icon: "bell",
                        title: "Reminders"
                    )
                }
            }.glassCard()
        }
    }


struct ActionButton: View {

    let icon: String
    let title: String

    var body: some View {

        VStack(spacing: 12) {

            Image(systemName: icon)
                .font(.title)

            Text(title)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    QuickActionsView()
}
