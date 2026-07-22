//
//  FloatingTabBar.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct FloatingTabBar: View {
    var body: some View {

        NavigationStack {
            HStack {
                NavigationLink {
                    HomeView()
                } label: {
                    TabItem(icon: "house.fill", title: "Home")
                }
                   
                Spacer()
                
                NavigationLink{
                    GarageView()
                } label: {
                    TabItem(icon: "car.fill", title: "Garage")
                }
                
                Spacer()
                
                
                NavigationLink{
                    ExpensesView()
                } label: {
                    TabItem(icon: "chart.bar.fill", title: "Expenses")
                }
                
                Spacer()
                
                TabItem(icon: "gearshape.fill", title: "Settings")
            }
            .padding()
            .glassCard()
            .padding()
        }
    }
}

#Preview {
    FloatingTabBar()
}
