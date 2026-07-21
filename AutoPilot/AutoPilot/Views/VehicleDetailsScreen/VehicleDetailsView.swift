//
//  VehiceDetailsView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI
struct VehicleDetailsView: View {

    let vehicle: Vehicle
    @State private var selectedTab = 0

    var body: some View {

        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                ZStack {
                    
                    
                    backgroundBubbles()
                    
                    VStack(spacing: 20) {
                        
                        VehicleHeaderView()
                        
                        VehicleHeroCardView(vehicle: vehicle)
                        
                        VehicleTabBarView(selectedTab: $selectedTab)
                        
                        VStack(spacing: 16) {
                            
                            ReminderCardView()
                            RecentServiceCardView()
                        }
                        
                        QuickActionsView()
                        
                        AddExpenseButtonView()
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    VehicleDetailsView(
        vehicle: Vehicle(
            name: "BMW",
            model: "M3",
            registration: "GJ01AB1234",
            healthScore: 92,
            imageName: "car"
        )
    )
}
