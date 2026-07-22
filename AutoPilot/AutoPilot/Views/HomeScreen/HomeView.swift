//
//  HomeHeader.swift
//  AutoPilot
//
//  Created by Nitin on 14/07/26.
//

import SwiftUI

// MARK: - HOME VIEW

struct HomeView: View {

    var body: some View {

        ZStack {

            backgroundGradient

            ScrollView(showsIndicators: false) {

                VStack(spacing: 20) {

                    HomeHeader()

                    VehicleHeroCard()

                    QuickActionsGrid()

                    HStack(spacing: 16) {
                        UpcomingServiceCard()
                        ExpenseSummaryCard()
                    }

                    RecentActivityCard()

                    Spacer(minLength: 100)
                }
                .padding()
            }

            VStack {
                Spacer()
                FloatingTabBar()
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - BACKGROUND

extension HomeView {

    var backgroundGradient: some View {
        LinearGradient(
            colors: [
                Color.blue.opacity(0.18),
                Color.white,
                Color.white
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}



// MARK: - STATS

struct VehicleStat: View {

    let icon: String
    let title: String
    let value: String

    var body: some View {

        VStack(spacing: 6) {

            Image(systemName: "")
                .font(.title3)

            Text(value)
                .fontWeight(.bold)

            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

// MARK: - SERVICE CARD

struct UpcomingServiceCard: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 12) {

            Label(
                "Upcoming Service",
                systemImage: "wrench.and.screwdriver.fill"
            )

            Text("12 Days Left")
                .font(.title3.bold())

            Text("1,250 km remaining")
                .foregroundStyle(.secondary)

            Spacer()

            Button("View Details") {

            }
            .buttonStyle(.borderedProminent)
        }
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .glassCard()
    }
}

struct ExpenseRow: View {

    let title: String
    let amount: String

    var body: some View {

        HStack {

            Text(title)

            Spacer()

            Text(amount)
        }
    }
}

struct ActivityRow: View {

    let title: String
    let date: String

    var body: some View {

        HStack {

            Circle()
                .frame(width: 10)

            Text(title)

            Spacer()

            Text(date)
                .foregroundStyle(.secondary)
        }
    }
}

struct TabItem: View {

    let icon: String
    let title: String

    var body: some View {

        VStack(spacing: 4) {

            Image(systemName: icon)

            Text(title)
                .font(.caption2)
        }
    }
}

// MARK: - MODELS

struct QuickAction: Identifiable {

    let id = UUID()
    let title: String
    let icon: String
}

// MARK: - GLASS EFFECT

struct GlassCardModifier: ViewModifier {

    func body(content: Content) -> some View {

        content
            .padding()
            .background(.ultraThinMaterial)
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 28,
                    style: .continuous
                )
            )
            .overlay {
                RoundedRectangle(cornerRadius: 28)
                    .stroke(
                        Color.white.opacity(0.25),
                        lineWidth: 1
                    )
            }
    }
}

extension View {
    
    func glassCard() -> some View {
        modifier(GlassCardModifier())
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
