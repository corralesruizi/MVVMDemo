//
//  StackNavigationService.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 12/09/24.
//

import Foundation


class StackNavigationService:ObservableObject{
    @Published var routes: [Route] = []
    @Published var showProdDetails = false
    
    func navigate(to screen: Route) {
        routes.append(screen)
    }
    
    func goBack() {
        _ = routes.popLast()
    }
    
    func reset() {
        routes = []
    }
    
    func replace(stack: [Route]) {
        routes = stack
    }
    
}
