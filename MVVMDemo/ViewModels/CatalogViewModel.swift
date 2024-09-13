//
//  CatalogViewModel.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import Foundation
import Factory

class CatalogViewModel:BaseViewModel
{
    @Published var products: [String]=[]
    @Injected(\.catalogService) private var catalogService
    @Published var sheetRoute:Route?
    
    func loadProducts(){
        products = catalogService.getPoducts()
    }
    
    func goBack()
    {
        navigationService.goBack()
    }
    
    func showPorductDetails()
    {
        sheetRoute = Route.details
    }
    
    func showCart()
    {
        sheetRoute = Route.cart
    }
    
    func goToDetails()
    {
        navigationService.navigate(to: Route.details)
    }
}
