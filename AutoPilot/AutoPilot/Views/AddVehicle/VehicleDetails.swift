import SwiftUI
import PhotosUI

struct VehicleDetails: View {

    @Environment(\.dismiss) private var dismiss

    @State private var brand = "Royal Enfield"
    @State private var model = "Classic 350"
    @State private var year = 2024
    @State private var registrationNumber = ""

    @State private var selectedPhoto: PhotosPickerItem?

    let brands = ["Royal Enfield", "Honda", "Yamaha", "KTM"]
    let models = ["Classic 350", "Hunter 350", "Meteor 350"]

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
            ScrollView {
                
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Header
                    
                    HStack {
                        NavigationLink {
                            AddVehicle1()
                        } label: {
                            Image(systemName: "arrow.left")
                                .font(.title3)
                                .frame(width: 48, height: 48)
                                .background(.ultraThinMaterial)
                                .clipShape(Circle())
                        }
                        
                        Spacer()
                        
                        Text("Step 2 of 2")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.blue)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(.ultraThinMaterial)
                            .clipShape(Capsule())
                    }
                    
                    // Title
                    
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text("Tell us about")
                            .font(.largeTitle.bold())
                        
                        Text("your vehicle")
                            .font(.largeTitle.bold())
                            .foregroundStyle(.blue)
                        
                        Text("Enter your vehicle details to get personalized reminders.")
                            .foregroundStyle(.secondary)
                    }
                    
                    // Vehicle Type
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Vehicle Type")
                            .fontWeight(.semibold)
                        
                        HStack {
                            
                            Image(systemName: "motorcycle")
                            
                            Text("Motorcycle")
                            
                            Spacer()
                            
                            Text("Change")
                                .foregroundStyle(.blue)
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                    // Brand
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Brand")
                            .fontWeight(.semibold)
                        
                        Picker("Brand", selection: $brand) {
                            ForEach(brands, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                    // Model
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Model")
                            .fontWeight(.semibold)
                        
                        Picker("Model", selection: $model) {
                            ForEach(models, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                    // Year
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Year")
                            .fontWeight(.semibold)
                        
                        Picker("Year", selection: $year) {
                            
                            ForEach(2020...2026, id: \.self) {
                                Text("\($0)")
                            }
                        }
                        .pickerStyle(.menu)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                    // Registration Number
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Registration Number")
                            .fontWeight(.semibold)
                        
                        HStack {
                            
                            Text("IND")
                                .fontWeight(.bold)
                                .foregroundStyle(.blue)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(.blue.opacity(0.1))
                                )
                            
                            TextField(
                                "KA 05 JK 1234",
                                text: $registrationNumber
                            )
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        Text("Enter your vehicle registration number")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    
                    // Upload Photo
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Text("Add Vehicle Photo (Optional)")
                            .fontWeight(.semibold)
                        
                        PhotosPicker(
                            selection: $selectedPhoto,
                            matching: .images
                        ) {
                            
                            VStack(spacing: 12) {
                                
                                Image(systemName: "camera")
                                    .font(.system(size: 28))
                                    .foregroundStyle(.blue)
                                
                                Text("Add a photo of your vehicle")
                                
                                Text("JPG, PNG up to 5MB")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 170)
                            .background(.ultraThinMaterial)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 24)
                            )
                            .overlay {
                                RoundedRectangle(cornerRadius: 24)
                                    .stroke(
                                        .gray.opacity(0.3),
                                        style: StrokeStyle(
                                            lineWidth: 1,
                                            dash: [6]
                                        )
                                    )
                            }
                        }
                    }
                    
                    // Info Card
                    
                    HStack(spacing: 12) {
                        
                        Image(systemName: "lightbulb.fill")
                            .foregroundStyle(.yellow)
                        
                        Text(
                            "This helps you identify your vehicle easily in your garage."
                        )
                        .font(.subheadline)
                        
                        Spacer()
                    }
                    .padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    // Navigation
                    
                    NavigationLink {
                        
                        VehicleAdded()
                        
                    } label: {
                        
                        HStack {
                            
                            Spacer()
                            
                            Text("Add Vehicle")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            Image(systemName: "arrow.right")
                                .foregroundStyle(.white)
                        }
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [.blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .clipShape(
                            RoundedRectangle(cornerRadius: 22)
                        )
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    colors: [
                        .white,
                        Color.blue.opacity(0.08),
                        Color.cyan.opacity(0.08)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    NavigationStack {
        VehicleDetails()
    }
}
