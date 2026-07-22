//
//  RecentActivityCard.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct RecentActivityCard: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 16) {

            Text("Recent Activity")
                .font(.headline)

            ActivityRow(
                title: "Oil Changed",
                date: "2 days ago"
            )

            ActivityRow(
                title: "Fuel Added",
                date: "5 days ago"
            )

            ActivityRow(
                title: "Tire Pressure Checked",
                date: "1 week ago"
            )
        }
        .glassCard()
    }
}
#Preview {
    RecentActivityCard()
}
