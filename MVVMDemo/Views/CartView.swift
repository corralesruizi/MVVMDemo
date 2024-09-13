//
//  CartView.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 13/09/24.
//

import SwiftUI

struct CartView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
        VStack{
            Button(action: {dismiss()}, label: {
                Text("Dissmiss")
            })
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
    }
}

#Preview {
    CartView()
}
