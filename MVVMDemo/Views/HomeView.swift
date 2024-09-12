//
//  HomeView.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory

struct HomeView: View {
    
    @InjectedObject(\.homeViewModel) var viewModel
    
    var body: some View {
        VStack(spacing: 40){
            Button(action: {
                //viewModel.goToCatalog()
                viewModel.getStarted()
            }, label: {
                Text("\(viewModel.title)")
            })
        }.onAppear(){
            viewModel.getTitle()
        }.navigationDestination(for: Route.self) {
            $0
        }.sheet(isPresented: $viewModel.showLogin, onDismiss:  viewModel.goToCatalog, content: {
            LoginView()
        })
    }
}

#Preview {
    HomeView()
}
