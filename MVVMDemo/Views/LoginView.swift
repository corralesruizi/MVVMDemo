//
//  LoginView.swift
//  MVVMDemo
//  Created by Isaac Corrales Ruiz on 12/09/24.
//

import SwiftUI

struct LoginView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 20){
            Button(action: {
                dismiss()
            }, label: {
                Text("Login")
            })
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Skip")
            })
        }
    }
}

#Preview {
    LoginView()
}
