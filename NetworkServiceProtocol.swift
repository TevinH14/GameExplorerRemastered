//
//  NetworkServiceProtocol.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 8/19/25.
//

import Foundation

protocol NetworkServiceProtocol {
    func fetchData(with url: String) async throws -> Data?
}
