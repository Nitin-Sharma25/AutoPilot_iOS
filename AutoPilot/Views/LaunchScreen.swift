//
//  LaunchScreen.swift
//  AutoPilot
//
//  Created by Nitin on 07/07/26.

import SwiftUI

struct LaunchScreen: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            LoginView()
        } else {
            ZStack {
                Color(hex: "#939A82")
                    .ignoresSafeArea()
                VStack {
                    VStack(spacing: 10) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)

                        Text("AutoPilot")
                            .foregroundStyle(Color(hex: "#3A4041"))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("Smart Vehicle Management").foregroundStyle(Color(hex: "#212325"))
                    }
                }
            }
            .ignoresSafeArea(edges: [.top, .bottom])
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
