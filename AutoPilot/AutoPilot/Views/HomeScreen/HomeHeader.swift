//
//  HomeHeader.swift
//  AutoPilot
//
//  Created by Nitin on 14/07/26.
//

import SwiftUI

struct HomeHeader: View {

    var body: some View {

        HStack {

            VStack(alignment: .leading, spacing: 4) {

                Text("Good Morning 👋")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text("AutoPilot")
                    .font(.largeTitle.bold())

                Text("Your vehicle, always in shape.")
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button {

            } label: {
                Image(systemName: "bell")
                    .font(.title3)
            }

            Circle()
                .fill(.gray.opacity(0.25))
                .frame(width: 44, height: 44)
                .overlay {
                    Image(systemName: "person.fill")
                }
        }
    }
}


#Preview {
    HomeHeader()
}
