//
//  NetworkManager.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//

import Foundation


class HotelsNetworkManager {

    func getData<T: Decodable>(urlString: String, completionHandler: @escaping (T) -> Void ) {
        
        guard let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        
        guard let url = URL(string: urlString) else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("32153b1686mshc0bd08275925b5cp1f55e0jsn639a5b0d2a81", forHTTPHeaderField: "X-RapidAPI-Key")
                
        URLSession.shared.dataTask(with: urlRequest, completionHandler: { data, response, error in
            guard let data = data else {
                if let error = error {
                    print(error)
                }
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completionHandler(decodedData)
            } catch {
                print(error)
            }
        }).resume()
    }
}
