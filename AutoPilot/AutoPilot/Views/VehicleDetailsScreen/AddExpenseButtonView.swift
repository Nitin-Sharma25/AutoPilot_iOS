//
//  AddExpenseButtonView.swift
//  AutoPilot
//
//  Created by Nitin on 21/07/26.
//

import SwiftUI

struct AddExpenseButtonView: View {

    var body: some View {

        Button {

        } label: {

            HStack {

                Image(systemName: "plus")

                Text("Add Expense")
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
        .buttonStyle(.borderedProminent)
    }
}



#Preview {
    AddExpenseButtonView()
}
