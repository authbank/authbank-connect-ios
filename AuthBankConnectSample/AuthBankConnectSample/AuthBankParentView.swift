//
//  AuthBankParentView.swift
//  AuthBankConnectSample
//
//  Created by Amarildo Joao Custodio Lucas on 22/06/21.
//

import AuthBankConnect
import SwiftUI

struct AuthBankParentView: View {
    // Handle error messages.
    @State private var showAlert = false
    @State private var showAlertTitle = ""
    @State private var showAlertMessage = ""
    
    // AuthBank parent view placeholder.
    @State private var authBankView: LaunchScreenView?
    
    // AuthBank options keys.
    private let options: [String: String] = [
        "full_name": "Airton de Assunção Sebastião Custódio Lucas",
        "surname": "Lucas",
        "email": "airtoncpu@hotmail.com",
        "mobile": "928093366"
    ]
    
    var body: some View {
        ZStack {
            authBankView
        }
        .onAppear {
            // Configuration.
            var authBank = AuthBank.shared
            authBank.credentials(
                withKey: Configuration.apiKey,
                andSecret: Configuration.secretID
            )
            authBank.connect(with: options) { result in
                switch result {
                case .success(let view):
                    showAlert = false
                    showAlertTitle = ""
                    showAlertMessage = ""
                    authBankView = view
                case .failure(let error):
                    print(error.localizedDescription)
                    showAlertTitle = "Localized Description"
                    showAlertMessage = error.errorDescription ?? "Erro."
                    showAlert = true
                }
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(showAlertTitle),
                message: Text(showAlertMessage)
            )
        }
    }
}

struct AuthBankParentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthBankParentView()
    }
}
