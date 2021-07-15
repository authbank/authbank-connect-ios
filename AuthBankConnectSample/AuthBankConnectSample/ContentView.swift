//
//  ContentView.swift
//  AuthBankConnectSample
//
//  Created by Amarildo Joao Custodio Lucas on 20/06/21.
//

import AuthBankConnect
import SwiftUI

struct ContentView: View {
    @State private var launchAuthBankView = false
    
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: AuthBankParentView(),
                isActive: $launchAuthBankView
            ) {
                Text("Conecte a sua conta bancária")
                    .font(.headline)
                    .foregroundColor(.white)
                    .bold()
                    .padding(20.0)
                    .background(Color.blue)
                    .cornerRadius(12.0)
            }
            .isDetailLink(false)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environment(\.rootPresentationMode, $launchAuthBankView)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
