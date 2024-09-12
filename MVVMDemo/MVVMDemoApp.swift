//
//  MVVMDemoApp.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory
import SwiftfulRouting

@main
struct MVVMDemoApp: App {
    private let navService = Container.shared.navigationService()
    var body: some Scene {
        WindowGroup {
            
            RouterView { router in
                navService.addRouter(router: router)
               return navService.getPage(route: AppPage.Main)
            }
        }
    }
}

//This works but not sure where is the best place to have this extension
extension Container {
    var navigationService: Factory<NavigationService> {
        Factory(self) { NavigationService() }.singleton
    }
 
    var homeService: Factory<HomeService> {
        Factory(self) { HomeService() }
    }
    
    var catalogService: Factory<CatalogService> {
        Factory(self) { CatalogService() }
    }
    
    var productService: Factory<ProductService> {
        Factory(self) { ProductService() }
    }
    
    var homeViewModel: Factory<HomeViewmodel> {
        Factory(self) { HomeViewmodel() }
    }
    
    var catalogViewModel: Factory<CatalogViewModel> {
        Factory(self) { CatalogViewModel() }
    }
}
