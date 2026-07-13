//
//  LaunchScreen.swift
//  AutoPilot
//
//  Created by Nitin on 07/07/26.

import SwiftUI

struct LaunchScreenView: View {
    @State private var navigateToLogin = false

    var body: some View {

        Color.clear
            .frame(width: 0, height: 0)
            .accessibilityHidden(true)

        ZStack {

         backgroundBubbles()

            VStack(spacing: 24) {

                Spacer()

                // MARK: Logo

                ZStack {

                    Circle()
                        .fill(.ultraThinMaterial)
                        .frame(width: 110, height: 110)

                    Circle()
                        .stroke(
                            .blue.opacity(0.4),
                            lineWidth: 1
                        )
                        .frame(width: 110, height: 110)

                    Image(systemName: "car.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(.blue)
                }

                VStack(spacing: 10) {
                    Text("AutoPilot")
                        .font(
                            .system(
                                size: 40,
                                weight: .bold
                            )
                        )

                    Text("Smart Vehicle Care")
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }

                Spacer()

                // MARK: Loader

                ProgressView()
                    .tint(.blue)

                Text("Preparing your garage...")
                    .font(.footnote)
                    .foregroundStyle(.secondary)


                Spacer()
                    .frame(height: 60)
            }
            .padding()
            .task {
                try? await Task.sleep(nanoseconds: 2000000000)
                navigateToLogin = true
            }
        }
        .fullScreenCover(isPresented: $navigateToLogin) {
            SignupView()
        }
    }
}

#Preview{
    LaunchScreenView()
}
