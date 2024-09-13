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
            
            Button(action:  {viewModel.showCart() }, label: {
                Text("Show Cart")
            })
            
            Button(action:  {viewModel.loadProducts() }, label: {
                Text("Load products")
            })
            
            Button(action:  {viewModel.goToDetails() }, label: {
                Text("navigate to product details")
            })
                
            Button(action:  {viewModel.showPorductDetails() }, label: {
                Text("show product details")
            })
                
            Button(action:  {viewModel.goBack() }, label: {
                    Text("Go back")
            }).sheet(item: $viewModel.sheetRoute){
                    $0
                }
            }.background(Color.red)
            .onAppear(perform: {
                viewModel.getViewCount()
            })
            
        }
}

#Preview {
    CatalogView()
}
