//
//  HotelsNetworkModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//

import Foundation

struct HotelsNetworkModel: Decodable {
    var data: Data
}

struct Data: Decodable {
    var body: Body
}

struct Body: Decodable {
    var searchResults: SearchResults
}

struct SearchResults: Decodable {
    var results: [Results]
}

struct Results: Decodable {
    let id: Int
    let name: String
    let address: Address
    let ratePlan: RatePlan
    
}

struct Address: Decodable {
    let streetAddress: String
}

struct RatePlan: Decodable {
    let price: Price
}

struct Price: Decodable {
    let current: String
    
}
    
