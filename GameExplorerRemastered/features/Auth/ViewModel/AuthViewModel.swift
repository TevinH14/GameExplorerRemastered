//
//  AuthViewModel.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 8/24/25.
//

import Foundation

struct AuthViewModel: AuthViewModelProtocol {
    //MARK: - Navigation flags
     var isGoingToLogin: Bool
    var isgoingToSignUp: Bool
    var isSignedUp: Bool
    var isLoggedIn: Bool
    
    init() {
        self.isGoingToLogin = false
        self.isgoingToSignUp = false
        self.isSignedUp = false
        self.isLoggedIn = false
    }
}
