//
//  Addvehicle1.swift
//  AutoPilot
//
//  Created by Nitin on 10/07/26.
//

import SwiftUI

struct AddVehicle1: View {

    @State private var selectedVehicle: VehicleType = .motorcycle

    var body: some View {
        NavigationStack {
            ZStack {
                
                // Background
                LinearGradient(
                    colors: [
                        Color.blue.opacity(0.5),
                        Color.white,
                        Color.blue.opacity(0.4)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        // Header
                        HStack {
                            
                            
                            Spacer()
                            
                            Text("Step 1 of 2")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.blue)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                                .background(.ultraThinMaterial)
                                .clipShape(Capsule())
                        }
                        
                        // Vehicle Icon
                        ZStack {
                            Circle()
                                .stroke(
                                    .cyan.opacity(0.5),
                                    lineWidth: 2
                                )
                                .fill(.ultraThinMaterial)
                                .frame(width: 120, height: 100)
                            
                                
                            
                            Image(systemName: "car.fill")
                                .font(.system(size: 40))
                                .foregroundStyle(.blue)
                        }
                        
                        // Title
                        VStack(spacing: 4) {
                            
                            Text("Let's add your")
                                .font(.system(size: 34, weight: .bold))
                            
                            Text("Vehicle")
                                .font(.system(size: 34, weight: .bold))
                                .foregroundStyle(.blue)
                            
                            Text("Select the type of vehicle \n you want to add to your garage.")
                                .multilineTextAlignment(.center)
                                .foregroundStyle(.secondary)
                                .padding(.top, 8)
                        }
                        
                        // Vehicle Cards
                        VStack(spacing: 20) {
                            
                            VehicleCard(
                                title: "Motorcycle",
                                subtitle: "Two wheelers",
                                image: "motorcycle",
                                isSelected: selectedVehicle == .motorcycle
                            ) {
                                selectedVehicle = .motorcycle
                            }
                            
                            VehicleCard(
                                title: "Car",
                                subtitle: "Four wheelers",
                                image: "car.fill",
                                isSelected: selectedVehicle == .car
                            ) {
                                selectedVehicle = .car
                            }
                            
                            VehicleCard(
                                title: "Scooter",
                                subtitle: "Scooters & mopeds",
                                image: "scooter",
                                isSelected: selectedVehicle == .scooter
                            ) {
                                selectedVehicle = .scooter
                            }
                        }
                        
                        // Info Card
                        HStack(spacing: 16) {
                            
                            Image(systemName: "shield")
                                .font(.title2)
                                .foregroundStyle(.blue)
                            
                            Text("You can add more vehicles later from your garage.")
                                .foregroundStyle(.secondary)
                            
                            Spacer()
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                        
                        // Continue Button
                       NavigationLink{
                            VehicleDetails()
                        } label: {
                            HStack {
                                Spacer()
                                
                                Text("Continue")
                                    .fontWeight(.semibold)
                                
                                Spacer()
                                
                                Image(systemName: "arrow.right")
                                    .frame(width: 34, height: 34)
                                    .background(Color.white.opacity(0.2))
                                    .clipShape(Circle())
                            }
                            .foregroundStyle(.white)
                            .padding()
                            .background(
                                LinearGradient(
                                    colors: [.blue, .blue.opacity(0.8)],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                }
            }
        }
    }
}

enum VehicleType {
    case motorcycle
    case car
    case scooter
}

struct VehicleCard: View {

    let title: String
    let subtitle: String
    let image: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {

        Button(action: action) {

            HStack(spacing: 18) {

                ZStack {
                    Circle()
                        .fill(.ultraThinMaterial)
                        .frame(width: 80, height: 80)

                    Image(systemName: image)
                        .font(.system(size: 34))
                        .foregroundStyle(.primary)
                }

                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .font(.headline)

                    Text(subtitle)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }

                Spacer()

                Image(systemName:
                        isSelected
                      ? "checkmark.circle.fill"
                      : "circle")
                .font(.title2)
                .foregroundStyle(
                    isSelected
                    ? .blue
                    : .gray.opacity(0.5)
                )
            }
            .padding()
            .frame(height: 120)
            .background(.ultraThinMaterial)
            .overlay {
                RoundedRectangle(cornerRadius: 28)
                    .stroke(
                        isSelected
                        ? Color.blue.opacity(0.8)
                        : Color.clear,
                        lineWidth: 2
                    )
            }
            .clipShape(RoundedRectangle(cornerRadius: 28))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    AddVehicle1()
}
