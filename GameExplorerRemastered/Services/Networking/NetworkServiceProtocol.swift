//
//  NetworkServiceProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchData(with url: String, query: String) async throws -> Data?
}
