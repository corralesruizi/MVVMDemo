//
//  NavigationService.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import Foundation
import SwiftUI
import SwiftfulRouting

enum AppPage{
    case Main
    case Catalog
    case Details
}

class NavigationService
{
    private var navRouter: AnyRouter?=nil
    
    @ViewBuilder
     func getPage(route: AppPage) -> some View{
        switch route{
            case AppPage.Main:
                HomeView()
            case AppPage.Details:
                ProductDetailView()
            case AppPage.Catalog:
                CatalogView()
        }
    }
    
    //Used for preview testing
    func addRouter(router: AnyRouter)
    {
        self.navRouter = router
    }
    
    func navigateTo(destination: AppPage)
    {
        let page = getPage(route: destination)
        
        navRouter?.showScreen(.push){ _ in
            page
        }
    }
    
    
    // this is causeing a warning
    func present(Sheet: AppPage){
      
        let page = getPage(route: Sheet)
        
        navRouter?.showScreen(.sheet){ _ in
            page
        }
    }
    
}

