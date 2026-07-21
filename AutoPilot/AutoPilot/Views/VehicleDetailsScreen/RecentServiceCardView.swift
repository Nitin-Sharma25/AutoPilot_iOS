//
//  RecentServiceCardView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct RecentServiceCardView: View {

    var body: some View {

        HStack {
            VStack(spacing: 20) {
                
                Text("Recent Service")
                    .fontWeight(.semibold)
                
                Text("General Service")
                    .font(.headline)
                
                Text("15 Apr 2025")
                
                Text("6,245 km")
                
                Text("Completed").frame(maxWidth: .infinity)
                    .foregroundColor(.green)
            }.glassCard()
        }
        }
    }

#Preview {
    RecentServiceCardView()
}
