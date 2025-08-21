//
//  NetworkService.swift
//  GameExplorerRemastered
//
//  Created by Tevin on 7/29/25.
//

import Foundation

class NetworkService: NetworkServiceProtocol {
    let session: URLSession

    init() {
        self.session = URLSession(configuration: .default, delegate: URLSessionDelegateForTesting(), delegateQueue: nil)
    }
    
    func fetchData(with urlString: String) async throws -> Data? {
            print("fetching \(urlString)")
            guard let url = URL(string: urlString) else {
                print(URLError(.badURL))
                throw URLError(.badURL)
            }
            
        let request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
            
            do {
                let (data, response) = try await URLSession.shared.data(for: request)
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    print("error: not code 200")
                    throw URLError(.badServerResponse)
                }
                print(String(data: data, encoding: .utf8) ?? "invalid utf8")
                return data
            } catch {
                print("NetworkService: fetchData error: \(error)")
                throw error
            }
        }
    }

//
class URLSessionDelegateForTesting: NSObject, URLSessionDelegate {
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }
}
