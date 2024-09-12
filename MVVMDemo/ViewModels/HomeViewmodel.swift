//
//  HomeViewmodel.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 11/09/24.
//

import Foundation
import Factory
import SwiftUI

class HomeViewmodel:ObservableObject{
    @Published var title: String=""
    @Published var showLogin:Bool = false
    
    private var validLogin = true
    @Injected(\.homeService) private var homeService
    @Injected(\.stackNavigationService) private var stackNavService
    
    func goToCatalog(){
        
        if validLogin
        {
            stackNavService.navigate(to: Route.catalog)
        }
    }
    
    func getStarted()
    {
        showLogin = true
    }
    
    func hideLogin(action: DismissAction)
    {
        action()
    }
    
    func getTitle(){
        title = homeService.getHomeTitle()
    }
}
