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
    func buidAp() -> some View{
        RouterView
        { router in
            self.navRouter = router
            return self.getPage(route: .Main)
        }
    }
    
    @ViewBuilder
    private func getPage(route: AppPage) -> some View{
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
    
    //Will refactor since we are only changing the segue options
    func present(modal: AppPage){
        guard let router = navRouter else {
                print("Navigation Atttempt")
            return
        }
        
        let page = getPage(route: modal)
        
        router.showScreen(.sheet){ _ in
            page
        }
    }
    
}

