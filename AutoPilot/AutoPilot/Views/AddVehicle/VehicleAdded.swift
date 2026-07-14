//
//  VehicleAdded.swift
//  AutoPilot
//
//  Created by Nitin on 10/07/26.
//
import SwiftUI

struct VehicleAdded: View {

    @State private var showGarage = false

    var body: some View {

        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [
                        .white,
                        Color.blue.opacity(0.09)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                // MARK: Glass Blobs

                Circle()
                    .fill(Color.blue.opacity(0.8))
                    .frame(width: 220)
                    .blur(radius: 40)
                    .offset(x: -140, y: -260)
                

                Circle()
                    .fill(Color.cyan.opacity(0.8))
                    .frame(width: 180)
                    .blur(radius: 40)
                    .offset(x: 150, y: -120)

                Circle()
                    .fill(Color.purple.opacity(0.2))
                    .frame(width: 250)
                    .blur(radius: 50)
                    .offset(x: 0, y: 280)

                VStack(spacing: 30) {
                    
                    Spacer()
                    
                    // MARK: Success Icon
                    
                    ZStack {
                        
                        Circle()
                            .fill(.ultraThinMaterial)
                            .frame(width: 140, height: 140)
                        Circle()
                            .stroke(
                                .cyan.opacity(0.5),
                                lineWidth: 2
                            )
                        
                        Image(systemName: "checkmark")
                            .font(.system(size: 55, weight: .bold))
                            .foregroundStyle(.green)
                    }
                    
                    // MARK: Title
                    
                    VStack(spacing: 8) {
                        
                        Text("Vehicle added")
                            .font(.system(size: 38, weight: .bold))
                        
                        Text("successfully!")
                            .font(.system(size: 38, weight: .bold))
                            .foregroundStyle(.green)
                    }
                    
                    // MARK: Vehicle Card
                    
                    HStack(spacing: 15) {
                        
                        Image("car")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 100)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("M 3")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            Text("B M W ")
                                .foregroundStyle(.secondary)
                            
                            Text("Number Plate")
                                .fontWeight(.semibold)
                            
                        }
                        Spacer()
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 28))
                    
                    // MARK: Welcome Card
                    
                    HStack(alignment: .center, spacing: 15) {
                        
                        Image(systemName: "car.fill")
                            .fontWeight(.bold)
                            .foregroundStyle(.green)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Welcome to your garage")
                                .font(.headline)
                            
                            Text("You can now manage your vehicle services, reminders and expenses.")
                                .foregroundStyle(.secondary)
                        }
                        Spacer()
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 28))
                    
                    // MARK: Go To Garage
                    
                    NavigationLink {
                        HomeView()
                    } label: {
                        HStack {
                            Spacer()
                            Text("Go to Garage")
                                .font(.headline)
                                .foregroundStyle(.white)
                            Spacer()
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.white)
                                .frame(width: 42, height: 42)
                                .background(.white.opacity(0.2))
                                .clipShape(Circle())
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 24))
                    }
                    
                    // MARK: Add Another Vehicle
                    
                    NavigationLink {
                        AddVehicle1()
                    } label: {
                        Text("Add Another Vehicle")
                            .fontWeight(.semibold)
                            .foregroundStyle(.blue)
                            .backgroundStyle(.cyan)
                    }
                    Spacer()
                }
                .padding()
                .background(
                    LinearGradient(
                        colors: [
                            .white,
                            Color.blue.opacity(0.08)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
        }
    }
}

  
#Preview {
    VehicleAdded()
}
