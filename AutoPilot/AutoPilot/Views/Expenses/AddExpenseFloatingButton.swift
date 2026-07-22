//
//  AddExpenseFloatingButton.swift
//  AutoPilot
//
//  Created by Nitin on 22/07/26.
//

import SwiftUI

struct AddExpenseFloatingButton: View {

    var body: some View {

        Button {

        } label: {

            HStack(spacing: 12) {

                Image(systemName: "plus")

                Text("Add Expense")
                    .fontWeight(.semibold)
            }
            .padding(.horizontal,28)
            .padding(.vertical,18)
            .background(.green)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .shadow(radius: 10)
        }
    }
}

#Preview {
    AddExpenseFloatingButton()
}
