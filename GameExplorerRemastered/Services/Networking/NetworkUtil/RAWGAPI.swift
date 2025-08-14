//
//  RAWGConstants.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/28/25.
//

import Foundation
struct RAWGAPI {
    //MARK: Api Key
    //Get api Key from info.plist
    static let apiKey: String = ""
    //MARK: Base url
    // Base api
    static let base_Url: String = "https://api.rawg.io/api/"
    
    static func getApiKey() -> String {
        return "?key=" + apiKey
    }
}


