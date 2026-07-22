//
//  ExpensesView.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI


struct ExpensesView: View {
    
    var body: some View {
        
        ZStack {
            
            backgroundBubbles()
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "arrow.left")
                                    .font(.title3)
                            }
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .font(.title3)
                            }
                        }
                        Text("Expenses")
                            .font(.system(size: 38, weight: .bold))
                        
                        Text("Track all your vehicle expenses")
                            .foregroundColor(.secondary)
                    }
                    
                    ExpenseVehicleCardView()
                    
                    ExpenseCategoryGridView()
                    
                    RecentExpensesView()
                }
                .padding()
                
                Spacer(minLength: 100)
            }
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    AddExpenseFloatingButton()
                }
                .padding()
            }
        }
    }
}



#Preview {
    ExpensesView()
}
