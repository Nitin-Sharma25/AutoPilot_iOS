//
//  VehicleHeroCard.swift
//  AutoPilot
//
//  Created by Nitin on 14/07/26.
//

import SwiftUI

struct VehicleHeroCard: View {

    var body: some View {
        

        VStack(spacing: 20) {

            HStack {

                VStack(alignment: .leading) {

                    Text("B M W ")
                        .foregroundStyle(.secondary)

                    Text("M 3")
                        .font(.title.bold())

                    Text("Number Plate")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(Color.blue.opacity(0.15))
                        .clipShape(Capsule())
                }

                Spacer()

                Menu {
                    Button("Edit Vehicle") {}
                    Button("Delete", role: .destructive) {}
                } label: {
                    Image(systemName: "ellipsis")
                }
            }

            Image("car")
                .resizable()
                .scaledToFit()
                .frame(height: 260)

            HStack {

                VehicleStat(
                    icon: "fuelpump.fill",
                    title: "Fuel",
                    value: "72%"
                )

                Spacer()

                VehicleStat(
                    icon: "speedometer",
                    title: "KM",
                    value: "42,500"
                )

                Spacer()

                VehicleStat(
                    icon: "wrench.and.screwdriver.fill",
                    title: "Service",
                    value: "1250"
                )
            }
        }
        .glassCard()
    }
}

#Preview {
    VehicleHeroCard()
}
