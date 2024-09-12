//
//  HomeView.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory
import SwiftfulRouting

struct HomeView: View {
    @InjectedObject(\.homeViewModel) var viewModel
    
    var body: some View {
        VStack(spacing: 40){
            Button(action: {
                viewModel.goToCatalog()
            }, label: {
                Text("\(viewModel.title)")
            })
        }.onAppear(){
            viewModel.getTitle()
        }
    }
}

#Preview {
    RouterView(){ router in
        let navService = Container.shared.navigationService()
        navService.addRouter(router: router)
        return HomeView()
    }
}
