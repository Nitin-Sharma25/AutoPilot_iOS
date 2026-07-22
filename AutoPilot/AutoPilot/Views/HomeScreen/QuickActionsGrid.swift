//
//  QuickActionsGrid.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct QuickActionsGrid: View {

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        LazyVGrid(columns: columns, spacing: 16) {

            NavigationLink {
                
            } label: {
                ActionCard(
                    title: "Add Fuel",
                    icon: "fuelpump.fill"
                )
            }

            NavigationLink {
                
            } label: {
                ActionCard(
                    title: "Log Service",
                    icon: "wrench.and.screwdriver.fill"
                )
            }

            NavigationLink {
                ExpensesView()
            } label: {
                ActionCard(
                    title: "Expense",
                    icon: "doc.text.fill"
                )
            }

            NavigationLink {
             
            } label: {
                ActionCard(
                    title: "Reminder",
                    icon: "calendar"
                )
            }
        }
        .buttonStyle(.plain)
    }
}

struct ActionCard: View {

    let title: String
    let icon: String

    var body: some View {

        VStack(spacing: 12) {

            Image(systemName: icon)
                .font(.title2)

            Text(title)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 110)
        .glassCard()
    }
}

#Preview {
    QuickActionsGrid()
}
