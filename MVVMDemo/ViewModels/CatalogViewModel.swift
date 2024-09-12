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
    @Injected(\.navigationService) private var navService
    
    
    func loadProducts(){
        products = catalogService.getPoducts()
    }
    
    func showProductDetails(){
        //This works fine
        //navService.navigateTo(destination: AppPage.Details)
        
        //Causes the following warning
        navService.present(Sheet: AppPage.Details)
       
        /*
         Presenting view controller <_TtGC7SwiftUI29PresentationHostingControllerVS_7AnyView_: 0x1050e2400> from detached view controller <_TtGC7SwiftUI32NavigationStackHostingControllerVS_7AnyView_: 0x105817000> is not supported, and may result in incorrect safe area insets and a corrupt root presentation. Make sure <_TtGC7SwiftUI32NavigationStackHostingControllerVS_7AnyView_: 0x105817000> is in the view controller hierarchy before presenting from it. Will become a hard exception in a future release.
         */
    }
}
