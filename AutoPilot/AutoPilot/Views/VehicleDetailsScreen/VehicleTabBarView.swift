//
//  VehicleTabBarView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct VehicleTabBarView: View {

    @Binding var selectedTab: Int

    let tabs = ["Overview","Stats","Activity"]

    var body: some View {

        HStack {

            ForEach(0..<tabs.count,id:\.self) { index in

                Button {

                    selectedTab = index

                } label: {

                    Text(tabs[index])
                        .frame(maxWidth: .infinity)
                        .padding(.vertical,10)
                        .background(
                            selectedTab == index ?
                            Color.cyan.opacity(0.4) :
                            Color.clear
                        )
                        .clipShape(Capsule())
                }
            }
        }
        .glassCard()
        .padding(6)
        .background(.white.opacity(0.15))
        .clipShape(Capsule())
    }
}

struct VehicleInfoItem: View {

    let icon: String
    let title: String
    let value: String

    var body: some View {

        VStack(alignment: .leading) {

            Image(systemName: icon)

            Text(title)
                .font(.caption)

            Text(value)
                .fontWeight(.semibold)
        }
    }
}


#Preview {
    VehicleTabBarView(selectedTab: .constant(0))
}
