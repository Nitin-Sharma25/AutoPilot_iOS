//
//  HomeView.swift
//  AutoPilot
//
//  Created by Nitin on 09/07/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, Color.blue.opacity(0.4)], startPoint: .topLeading , endPoint: .bottomTrailing).ignoresSafeArea()
            
            ScrollView(showsIndicators: false){
                VStack(spacing: 20){
                    HeaderView()
                    VehicleCardView()
                    //QuickActionsView()
                    //VehicleOverviewView()
                    //ReminderSectionview()
                    
                    Spacer(minLength: 100)
                }.padding()
            }
            VStack{
                Spacer()
                //CustomTabBar()
            }
        }
    }
}


struct HeaderView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Hello, Nitin").font(.title.bold())
                Text("Welcome Back to AutoPilot").foregroundStyle(.secondary)
            }.padding().background(.ultraThinMaterial).clipShape(RoundedRectangle(cornerRadius: 15))
            Spacer()
            
            HStack(spacing:15){
                Image(systemName: "cloud").resizable().frame(width: 30, height: 18).foregroundColor(.primary)
                VStack(spacing: 20){
                    Text("28º C").font(.headline).fontWeight(.bold)
                    Text("Cloudy").font(.caption)
                }}.padding().background(.ultraThinMaterial).clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}


struct VehicleCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24){
            Text("BMW").font(.title2.bold())
            Image("car").resizable().scaledToFit().frame(height: 150)
            HStack{
                Label("Health: 65%", systemImage: "drop.fill")
                Spacer()
                Label("Condition: Good", systemImage: "gauge.medium")
            }
            
        }.frame(width:350 ,height:250 ,alignment: .bottomLeading)
        .padding().background(.ultraThinMaterial).clipShape(RoundedRectangle(cornerRadius: 24))
        
        
    }
}

#Preview {
    HomeView()
}
