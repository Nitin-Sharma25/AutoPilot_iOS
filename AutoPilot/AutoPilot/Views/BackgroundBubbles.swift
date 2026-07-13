//
//  backgorundBubbles.swift
//  AutoPilot
//
//  Created by Nitin on 13/07/26.
//

import SwiftUI

struct backgroundBubbles: View {
    var body: some View {
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
            
            
            Circle()
                .fill(Color.blue.opacity(0.4))
                .frame(width: 220)
                .blur(radius: 40)
                .offset(x: -140, y: -260)
            
            Circle()
                .fill(Color.cyan.opacity(0.3))
                .frame(width: 180)
                .blur(radius: 40)
                .offset(x: 150, y: -120)
            
            Circle()
                .fill(Color.purple.opacity(0.2))
                .frame(width: 250)
                .blur(radius: 50)
                .offset(x: 0, y: 280)
            
        }
    }
}

#Preview {
    backgroundBubbles()
}
