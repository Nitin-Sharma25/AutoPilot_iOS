//
//  SignUpView.swift
//  AutoPilot
//
//  Created by Nitin on 09/07/26.
//

import SwiftUI

struct SignupView: View {

    @Environment(\.dismiss) private var dismiss

    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var agreedToTerms = false

    var body: some View {
        
            
        NavigationStack{
            ZStack {
                
                // MARK: Background
                
                LinearGradient(
                    colors: [
                        Color.white,
                        Color.blue.opacity(0.08)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                // MARK: Floating Glass Blobs
                
                Circle()
                    .fill(.blue.opacity(0.3))
                    .frame(width: 220)
                    .blur(radius: 30)
                    .offset(x: -130, y: -300)
                
                Circle()
                    .fill(.cyan.opacity(0.2))
                    .frame(width: 180)
                    .blur(radius: 30)
                    .offset(x: 150, y: -220)
                
                ScrollView {
                    
                    VStack(spacing: 20) {
                        
                        Spacer(minLength: 40)
                        
                        // MARK: Logo
                        
                        VStack(spacing: 5) {
                            
                            Image(systemName: "car.fill")
                                .font(.system(size: 34))
                                .foregroundStyle(.blue)
                            
                            Text("AutoPilot")
                                .font(.system(size: 42, weight: .bold))
                            
                            Text("Smart Vehicle Care")
                                .foregroundStyle(.secondary)
                        }
                        
                        // MARK: Signup Card
                        
                        VStack(alignment: .leading, spacing: 19) {
                            
                            VStack(alignment: .leading, spacing: 6) {
                                
                                Text("Create Account")
                                    .font(.title.bold())
                                
                                Text("Join AutoPilot and simplify vehicle care")
                                    .foregroundStyle(.secondary)
                            }
                            
                            // MARK: Full Name
                            
                            glassField(
                                icon: "person",
                                placeholder: "Full Name",
                                text: $fullName
                            )
                            
                            // MARK: Email
                            
                            glassField(
                                icon: "envelope",
                                placeholder: "Email Address",
                                text: $email
                            )
                            
                            // MARK: Password
                            
                            passwordField(
                                placeholder: "Password",
                                text: $password
                            )
                            
                            // MARK: Confirm Password
                            
                            passwordField(
                                placeholder: "Confirm Password",
                                text: $confirmPassword
                            )
                            
                            // MARK: Terms
                            
                            Toggle(
                                "I agree to the Terms & Conditions",
                                isOn: $agreedToTerms
                            )
                            .font(.footnote)
                            
                            // MARK: Signup Button
                            
                            NavigationLink {
                                AddVehicle1()
                            } label: {
                                Text("Create Account")
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                            }
                            .foregroundStyle(.white)
                            .background(
                                LinearGradient(
                                    colors: [
                                        .blue,
                                        .blue.opacity(0.7)
                                    ],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 18
                                )
                            )                        }
                        .padding(24)
                        .background(.ultraThinMaterial)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 30
                            )
                        )
                        .overlay {
                            RoundedRectangle(
                                cornerRadius: 30
                            )
                            .stroke(
                                .white.opacity(0.4),
                                lineWidth: 1
                            )
                        }
                        
                        // MARK: Login Link
                        
                        HStack(spacing: 4) {
                            
                            Text("Already have an account?")
                            
                            NavigationLink{
                                LoginView()
                            } label: {
                                Text("Sign in")
                            }
                        }
                        .font(.footnote)
                        
                        Spacer(minLength: 30)
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
        }
        }
    }

    // MARK: Reusable Text Field

    private func glassField(
        icon: String,
        placeholder: String,
        text: Binding<String>
    ) -> some View {

        HStack {

            Image(systemName: icon)

            TextField(
                placeholder,
                text: text
            )
            .textInputAutocapitalization(.never)
        }
        .padding()
        .background(.white.opacity(0.7))
        .clipShape(
            RoundedRectangle(
                cornerRadius: 18
            )
        )
    }

    // MARK: Reusable Password Field

    private func passwordField(
        placeholder: String,
        text: Binding<String>
    ) -> some View {

        HStack {

            Image(systemName: "lock")

            SecureField(
                placeholder,
                text: text
            )

            Image(systemName: "eye.slash")
        }
        .padding()
        .background(.white.opacity(0.7))
        .clipShape(
            RoundedRectangle(
                cornerRadius: 18
            )
        )
    }


#Preview {
    NavigationStack {
        SignupView()
    }
}
