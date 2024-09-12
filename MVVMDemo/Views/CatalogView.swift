//
//  CatalogView.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory

struct CatalogView: View {
    @InjectedObject(\.catalogViewModel) var viewModel
    
    var body: some View {
        VStack(spacing: 20){
            List{
                ForEach (viewModel.products ,id: \.self) { product in
                    Text(product)
                }
            }
            
            Button(action:  {viewModel.loadProducts() }, label: {
                Text("Load products")
            })
            
            Button(action:  {viewModel.showStackProductDetails() }, label: {
                Text("show product details")
            })
                
            Button(action:  {viewModel.goBack() }, label: {
                    Text("Go back")
            }).sheet(isPresented: $viewModel.showDetails, content: {
                ProductDetailView()
            })
                
            }.background(Color.red)
            
        }
}

#Preview {
    CatalogView()
}
