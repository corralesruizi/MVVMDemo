//
//  ProductDetailView.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory

struct ProductDetailView: View {
    
    @Environment (\.dismiss) var dismiss
    @InjectedObject(\.productViewModel) var viewModel
    var body: some View {
        
        VStack(spacing: 20) {
            Button(action: {
                viewModel.dismissModal(action: dismiss)
            }, label: {
                Text("Dissmiss")
            })
            
            Text("Awesome product page")
        }.onAppear(perform: {
            viewModel.getViewCount()
        })
    }
}

#Preview {
    ProductDetailView()
}
