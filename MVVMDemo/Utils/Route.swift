//
//  Route.swift
//  MVVMDemo
//
//  Created by Isaac Corrales Ruiz on 12/09/24.
//

//
//  Route.swift
//  CrewturaApp
//
//  Created by Alejandro Lopez on 23/11/23.
//  Copyright © 2023 Crewtura. All rights reserved.
//

import Foundation
import SwiftUI
enum Route {
    case main
    case catalog
    case details
    
}

extension Route: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.hashValue)
    }
}

extension Route: View {
    var body: some View {
        Group {
            switch self {
                case .main:
                    HomeView()
                case .catalog:
                    CatalogView()
                case .details:
                    ProductDetailView()
            }
        }
    }
}
