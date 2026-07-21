//
//  VehicleHeaderView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct VehicleHeaderView: View {

    var body: some View {

        HStack {

            Button {

            } label: {

                Image(systemName: "arrow.left")
                    .font(.title3)
            }

            Spacer()

            Text("Vehicle Details")
                .font(.title3)
                .fontWeight(.semibold)

            Spacer()

            Button {

            } label: {

                Image(systemName: "ellipsis")
                    .font(.title3)
            }
        }
    }
}
#Preview {
    VehicleHeaderView()
}
