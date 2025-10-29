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
    
    static let ASCENDING_ORDERING = "ordering=added&"
    static let DESCENDING_ORDERING = "ordering=-added&"
    
    static func getOrdering(_ value: String) -> String {
        return "&\(value)"
    }
    
    static func getYearsDates(start: String, end: String) -> String {
        
        return  "?dates=\(start),\(end)"
        
    }
    
    static func getApiKey() -> String {
        return "key=" + apiKey
    }
}
