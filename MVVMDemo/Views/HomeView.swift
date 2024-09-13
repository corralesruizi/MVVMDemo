//
//  HomeView.swift
//  MVVMDemo
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory

struct HomeView: View {
    
    @InjectedObject(\.homeViewModel) var viewModel
    
    var body: some View {
        VStack(spacing: 40){
            
            Text(viewModel.title)
            
            Button(action: {
                viewModel.getTitle()
            }, label: {
                Text("Get Title")
            })
            
            Button(action: {
                viewModel.goToCatalog()
            }, label: {
                Text("Go to Catalog")
            })
            
            Button(action: {
                viewModel.getStarted()
            }, label: {
                Text("Get Started")
            })
        }.navigationDestination(for: Route.self) {
            $0
        }.sheet(isPresented: $viewModel.showLogin, onDismiss:  viewModel.goToCatalog, content: {
            LoginView()
        })
        .onAppear(perform: {
            viewModel.getViewCount()
        })
    }
}

#Preview {
    HomeView()
}
