//
//  VehicleHeroCardView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

        struct VehicleHeroCardView: View {
            
            let vehicle: Vehicle
            
            var body: some View {
                VStack(spacing: 20) {
                    
                    HStack {
                        
                        Image(vehicle.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Text(vehicle.model)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text(vehicle.name)
                                .foregroundColor(.secondary)
                            
                            HStack {
                                Circle()
                                    .fill(.green)
                                    .frame(width: 6)
                                
                                Text(vehicle.registration)
                            }
                            .padding(.horizontal, 2)
                            .padding(.vertical, 8)
                            .clipShape(Capsule())
                        }
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        VehicleInfoItem(
                            icon: "calendar",
                            title: "Purchase Date",
                            value: "15 Mar 2024"
                        )
                        
                        Spacer()
                        
                        VehicleInfoItem(
                            icon: "fuelpump",
                            title: "Fuel Type",
                            value: "Petrol"
                        )
                        
                        Spacer()
                        
                        VehicleInfoItem(
                            icon: "gauge",
                            title: "Odometer",
                            value: "6,245 km"
                        )
                    }
                }
                .glassCard()
            }
        }


#Preview {
    VehicleHeroCardView(
        vehicle: Vehicle(
            name: "BMW",
            model: "M3",
            registration: "GJ01AB1234",
            healthScore: 92,
            imageName: "car"
        )
    )
}
