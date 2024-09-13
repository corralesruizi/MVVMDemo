//
//  MVVMDemoApp.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import SwiftUI
import Factory

@main
struct MVVMDemoApp: App {
    @ObservedObject var stackNavService = Container.shared.stackNavigationService()
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $stackNavService.routes){
                HomeView()
            }
        }
    }
}

extension Container {
    var stackNavigationService: Factory<StackNavigationService> {
        Factory(self) { StackNavigationService() }.singleton
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
    
    var productViewModel: Factory<ProductDetailViewModel> {
        Factory(self) { ProductDetailViewModel() }
    }
}
