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

// MARK: - QUICK ACTIONS

struct QuickActionsGrid: View {

    let actions: [QuickAction] = [
        .init(title: "Add Fuel", icon: "fuelpump.fill"),
        .init(title: "Log Service", icon: "wrench.and.screwdriver.fill"),
        .init(title: "Expense", icon: "doc.text.fill"),
        .init(title: "Reminder", icon: "calendar")
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {

        LazyVGrid(columns: columns, spacing: 16) {

            ForEach(actions) { action in

                Button {

                } label: {

                    VStack(spacing: 12) {

                        Image(systemName: action.icon)
                            .font(.title2)

                        Text(action.title)
                            .fontWeight(.medium)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 110)
                    .glassCard()
                }
            }
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

// MARK: - EXPENSE CARD

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

// MARK: - ACTIVITY

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

// MARK: - TAB BAR

struct FloatingTabBar: View {

    var body: some View {

        HStack {

            TabItem(icon: "house.fill", title: "Home")

            Spacer()

            TabItem(icon: "car.fill", title: "Garage")

            Spacer()

            TabItem(icon: "chart.bar.fill", title: "Insights")

            Spacer()

            TabItem(icon: "gearshape.fill", title: "Settings")
        }
        .padding()
        .glassCard()
        .padding()
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
