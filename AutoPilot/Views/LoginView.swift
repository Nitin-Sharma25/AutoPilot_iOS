//
//  LoginView.swift
//  AutoPilot
//
//  Created by Nitin on 07/07/26.
//
import SwiftUI

struct LoginView: View {
    
    @State private var mobileNumber = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color(hex:"#939A82")
                .ignoresSafeArea()
            
            //Welcome back
            VStack(spacing: 10) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Welcome Back!")
                    
                        .font(.system(size: 42, weight: .bold))
                    Text("Login to continue!")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
                
                Spacer()
                    .frame(height: 20)
                
                // Google Button
                Button {
                } label: {
                    HStack(spacing: 10) {
                        Image("google")
                            .resizable()
                            .frame(width: 28, height: 28)
                        
                        
                        Text("Continue with google")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 75)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.black, lineWidth: 2)
                )
                .padding(.horizontal, 30)
                
                Spacer().frame(height:10)
                
                // OR Divider
                HStack {
                    Rectangle()
                        .frame(height: 2)
                    
                    Text("OR")
                        .font(.title3)
                    
                    Rectangle()
                        .frame(height: 2)
                }
                .foregroundColor(.black)
                .padding(.horizontal, 45)
                
                Spacer().frame(height:10)
                
                // Mobile Number
                HStack {
                    TextField("Mobile Number", text: $mobileNumber)
                    
                    Image(systemName: "phone.fill")
                        .font(.title2)
                }
                .padding()
                .frame(height: 70)
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(.black, lineWidth: 1.5)
                )
                .padding(.horizontal, 30)
                
                Spacer().frame(height:10)
                
                // Password
                HStack {
                    SecureField("Password", text: $password)
                    
                    Image(systemName: "lock.fill")
                        .font(.title2)
                }
                .padding()
                .frame(height: 70)
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(.black, lineWidth: 1.5)
                )
                .padding(.horizontal, 30)
                
                // Forgot Password
                HStack {
                    Spacer()
                    
                    Button("Forgot Password?") {
                        
                    }
                    .foregroundColor(.black)
                    .font(.headline)
                }
                .padding(.horizontal, 35)
                
                Spacer()
                    .frame(height: 10)
                
                // Login Button
                Button {
                    
                } label: {
                    Text("Log In")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .background(
                            Color(hex:"#5A6E50")
                        )
                        .cornerRadius(22)
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 22)
                        .stroke(.black, lineWidth: 2)
                )
                .padding(.horizontal, 35)
                
                Spacer().frame(height:10)
                
                // Sign Up
                HStack(spacing: 5) {
                    Text("Don't have an account?")
                        .foregroundColor(.black)
                    Button("Sign up") {
                        
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .underline()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
