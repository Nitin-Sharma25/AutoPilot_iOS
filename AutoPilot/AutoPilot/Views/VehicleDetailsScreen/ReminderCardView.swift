//
//  ReminderCardView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct ReminderCardView: View {

    var body: some View {
            VStack(alignment: .leading, spacing: 20) {

                Text("Upcoming Reminders")
                    .fontWeight(.semibold)

                ReminderRow(
                    title: "Engine Oil Change",
                    date: "25 May 2025",
                    days: "12 Days Left"
                )

                ReminderRow(
                    title: "Insurance Renewal",
                    date: "07 Jun 2025",
                    days: "25 Days Left"
                )

                ReminderRow(
                    title: "PUC Expiry",
                    date: "20 Jul 2025",
                    days: "62 Days Left"
                )
            }.glassCard()
        }
    }


struct ReminderRow: View {

    let title: String
    let date: String
    let days: String

    var body: some View {

        HStack {

            VStack(alignment: .leading) {

                Text(title)

                Text(date)
                    .font(.caption)
            }

            Spacer()

            Text(days)
                .font(.caption)
                .foregroundColor(.red)
        }.glassCard()
    }
}



#Preview {
    ReminderCardView()
}


