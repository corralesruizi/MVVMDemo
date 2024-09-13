//
//  BaseViewModel.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 13/09/24.
//

import Foundation
import Factory
import SwiftUI

class BaseViewModel:ObservableObject
{
    @Injected(\.stackNavigationService) var navigationService
    
    func getViewCount()
    {
        navigationService.getCount()
    }
    
    
    func goToRoot()
    {
        navigationService.reset()
    }
    
    func dismissModal(action: DismissAction )
    {
        action()
    }

}



