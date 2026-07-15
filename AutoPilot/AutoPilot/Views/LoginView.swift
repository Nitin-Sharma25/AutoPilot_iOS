
import SwiftUI

struct LoginView: View {

    @State private var email = ""
    @State private var password = ""
    @State private var showSignup = false

    var body: some View {

        NavigationStack {
            ZStack {
                
                backgroundBubbles()
                ScrollView {
                    VStack(spacing: 30) {
                        
                        Spacer(minLength: 40)
                        
                        // MARK: Logo
                        
                        VStack(spacing: 12) {
                            
                            Image(systemName: "car.fill")
                                .font(.system(size: 34))
                                .foregroundStyle(.blue)
                            
                            Text("AutoPilot")
                                .font(.system(size: 42, weight: .bold))
                            
                            Text("Smart Vehicle Care")
                                .foregroundStyle(.secondary)
                        }
                        
                        // MARK: Login Card
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            VStack(alignment: .leading, spacing: 6) {
                                
                                Text("Welcome Back")
                                    .font(.title.bold())
                                
                                Text("Sign in to continue")
                                    .foregroundStyle(.secondary)
                            }
                            
                            // MARK: Email
                            
                            HStack {
                                Image(systemName: "envelope")
                                
                                TextField("Email Address", text: $email)
                                    .textInputAutocapitalization(.never)
                            }
                            .padding()
                            .background(.white.opacity(0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 13))
                            
                            // MARK: Password
                            
                            HStack {
                                Image(systemName: "lock")
                                
                                SecureField("Password", text: $password)
                                
                                Image(systemName: "eye.slash")
                            }
                            .padding()
                            .background(.white.opacity(0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 13))
                            
                            HStack {
                                Spacer()
                                
                                Button("Forgot Password?") {
                                    // Forgot password action
                                }
                                .font(.footnote)
                            }
                            
                            // MARK: Login Button
                            
                            NavigationLink {
                                HomeView()
                            } label: {
                                Text("Enter Garage")
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                            }
                            .foregroundStyle(.white)
                            .background(
                                LinearGradient(
                                    colors: [.blue, .blue.opacity(0.8)],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 13))
                        }
                        .padding(24)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        // MARK: Social Login
                        
                        HStack(spacing: 16) {
                            socialButton(icon: "apple.logo", title: "Apple")
                            socialButton(icon: "g.circle.fill", title: "Google")
                        }
                        
                        // MARK: Sign Up Navigation
                        
                        HStack(spacing: 4) {
                            Text("Don't have an account?")
                            
                            NavigationLink{
                                SignupView()
                            } label: {
                                Text("Sign Up")
                            }
                        }
                        .font(.footnote)
                        
                        Spacer(minLength: 30)
                    }
                    .padding()
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationDestination(isPresented: $showSignup) {
                SignupView()
            }
        }
    }

    func socialButton(icon: String, title: String) -> some View {

        HStack {
            Image(systemName: icon)
            Text(title)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}



#Preview {
    
        LoginView()
     
}

