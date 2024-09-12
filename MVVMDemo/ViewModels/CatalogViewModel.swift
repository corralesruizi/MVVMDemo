//
//  CatalogViewModel.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import Foundation
import Factory

class CatalogViewModel:ObservableObject
{
    @Published var products: [String]=[]
    @Injected(\.catalogService) private var catalogService
    @Injected(\.stackNavigationService) private var stackNavService
    @Published var showDetails: Bool = false
    
    func loadProducts(){
        products = catalogService.getPoducts()
    }
    
    func goBack()
    {
        stackNavService.goBack()
    }
    
    func showStackProductDetails()
    {
        showDetails = true
    }
    
    func hideStackProductDetails()
    {
        showDetails = false
    }
}
