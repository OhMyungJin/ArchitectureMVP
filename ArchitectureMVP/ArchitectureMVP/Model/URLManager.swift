//
//  URLManager.swift
//  ArchitectureMVP
//
//  Created by Simmons on 7/20/24.
//

import Foundation

enum NetworkError: Error {
    case emptyResponse
    case invalidURL
    case decodingFailed
}

class URLManager {
    
//    let urlString: String = ("http://numbersapi.com/42?json")
    
    func fetchNumbersapi(completion: @escaping(numbersapi) -> Void) {
        let url = URL(string: "http://numbersapi.com/42?json")!
        let requestURL = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: requestURL) { data, response, error in
            guard error == nil else {
                print("Error : NetworkError")
                return
            }
            
            if let data = data {
                do{
                    let parsedData = try JSONDecoder().decode(numbersapi.self, from: data)
                    completion(parsedData)
                } catch {
                    print(NetworkError.decodingFailed)
                }
            }
        }.resume()
    }
}
