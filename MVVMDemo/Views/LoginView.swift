//
//  LoginView.swift
//  MVVMDemo
//  Created by Isaac Corrales Ruiz on 12/09/24.
//

import SwiftUI
import Factory

struct LoginView: View {
    @Environment (\.dismiss) var dismiss
    @InjectedObject(\.stackNavigationService)  var service: StackNavigationService
    var body: some View {
        VStack(spacing: 20){
            Button(action: {
                dismiss()
            }, label: {
                Text("Login")
            })
            
            Button(action: {
                service.getCount()
            }, label: {
                Text("Skip")
            })
        }
    }
}

#Preview {
    LoginView()
}
