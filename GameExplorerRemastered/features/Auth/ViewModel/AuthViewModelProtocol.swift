//
//  AuthViewModelProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin Hamilton on 8/24/25.
//

import Foundation

protocol AuthViewModelProtocol {
    var isGoingToLogin: Bool { get }
    var isgoingToSignUp: Bool { get }
    var isSignedUp: Bool { get }
    var isLoggedIn: Bool { get }

}
