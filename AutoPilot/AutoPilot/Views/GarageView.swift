//
//  GarageView.swift
//  AutoPilot
//
//  Created by Nitin on 15/07/26.
//

import SwiftUI

// MARK: - GARAGE VIEW

struct GarageView: View {

    @State private var showAddVehicle = false

    private let vehicles: [Vehicle] = [
        Vehicle(
            name: "B M W ",
            model: "M 3",
            registration: "Number plate",
            healthScore: 92,
            imageName: "car"
        ),
        Vehicle(
            name: "PORSCHE",
            model: "9 1 1",
            registration: "Number plate",
            healthScore: 88,
            imageName: "porsche"
        ),
        Vehicle(
            name: "Royal Enfield",
            model: "Classic 350",
            registration: "Number plate",
            healthScore: 95,
            imageName: "bike"
        )
    ]

    var body: some View {

        NavigationStack {

            ZStack {
                backgroundGradient

                ScrollView(showsIndicators: false) {

                    VStack(spacing: 20) {

                        GarageHeader()

                        FeaturedVehicleCard(
                            vehicle: vehicles.first!
                        )

                        VStack(alignment: .leading, spacing: 16) {

                            Text("All Vehicles")
                                .font(.headline)

                            ForEach(vehicles) { vehicle in

                                NavigationLink {

                                    VehicleDetailsView(vehicle: vehicle)

                                } label: {
                                    GarageVehicleCard(vehicle: vehicle)
                                }
                                .buttonStyle(.plain)
                            }
                        }

                        Spacer(minLength: 120)
                    }
                    .padding()
                }

                VStack {

                    Spacer()

                    HStack {

                        Spacer()

                        NavigationLink {
                            AddVehicle1()

                        } label: {
                            Image(systemName: "plus")
                                .font(.title2.bold())
                                .frame(width: 64, height: 64)
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                        }
                    }
                    .padding(.horizontal)

                    Spacer()
                        .frame(height: 90)
                }
            }
            .sheet(isPresented: $showAddVehicle) {

                AddVehiclePlaceholderView()
            }
        }
    }
}

// MARK: - HEADER

struct GarageHeader: View {

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            Text("My Garage")
                .font(.largeTitle.bold())

            Text("3 Vehicles • 1 Service Due")
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

// MARK: - FEATURED VEHICLE

struct FeaturedVehicleCard: View {

    let vehicle: Vehicle

    var body: some View {

        VStack(spacing: 20) {

            HStack {

                VStack(alignment: .leading, spacing: 8) {

                    Text("Featured Vehicle")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    Text(vehicle.name)
                        .font(.title2.bold())

                    Text(vehicle.model)
                        .foregroundStyle(.secondary)

                    Text(vehicle.registration)
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(Color.blue.opacity(0.15))
                        .clipShape(Capsule())
                }

                Spacer()

                HealthRing(progress: Double(vehicle.healthScore) / 100)
            }

            Image(vehicle.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 180)
        }
        .garageGlassCard()
    }
}

// MARK: - VEHICLE CARD

struct GarageVehicleCard: View {

    let vehicle: Vehicle

    var body: some View {

        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 18)
                .fill(.ultraThinMaterial)
                .frame(width: 70, height: 70)
                .overlay {

                    Image(systemName: "car.fill")
                        .font(.title2)
                }

            VStack(alignment: .leading, spacing: 6) {

                Text(vehicle.name)
                    .font(.headline)

                Text(vehicle.model)
                    .foregroundStyle(.secondary)
                Text(vehicle.registration)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            VStack {

                Text("\(vehicle.healthScore)%")
                    .font(.headline.bold())

                Text("Health")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }

            Image(systemName: "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .garageGlassCard()
    }
}

// MARK: - HEALTH RING

struct HealthRing: View {

    let progress: Double

    var body: some View {

        ZStack {

            Circle()
                .stroke(
                    Color.gray.opacity(0.15),
                    lineWidth: 10
                )

            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    AngularGradient(
                        colors: [.blue, .purple],
                        center: .center
                    ),
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))

            VStack {

                Text("\(Int(progress * 100))%")
                    .font(.headline.bold())

                Text("Health")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
        }
        .frame(width: 90, height: 90)
    }
}

// MARK: - MODEL

struct Vehicle: Identifiable {

    let id = UUID()
    let name: String
    let model: String
    let registration: String
    let healthScore: Int
    let imageName: String
}

// MARK: - GLASS EFFECT

struct GarageGlassCardModifier: ViewModifier {

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

    func garageGlassCard() -> some View {
        modifier(GarageGlassCardModifier())
    }
}

// MARK: - BACKGROUND

extension GarageView {

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

// MARK: - PLACEHOLDERS

struct VehicleDetailsPlaceholderView: View {

    let vehicle: Vehicle

    var body: some View {

        Text(vehicle.name)
            .navigationTitle("Vehicle Details")
    }
}

struct AddVehiclePlaceholderView: View {

    var body: some View {

        NavigationStack {

            Text("Add Vehicle")
                .navigationTitle("Add Vehicle")
        }
    }
}

// MARK: - PREVIEW

#Preview {
        GarageView()
    }

