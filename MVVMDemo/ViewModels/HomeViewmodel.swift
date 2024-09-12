//
//  HomeViewmodel.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import Foundation
import Factory

class HomeViewmodel:ObservableObject{
    @Published var title: String=""
    @Injected(\.homeService) private var homeService
    @Injected(\.navigationService) private var navService
    
    func goToCatalog(){
        navService.navigateTo(destination: AppPage.Catalog)
    }
    
    func getTitle(){
        title = homeService.getHomeTitle()
    }
}
