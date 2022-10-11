//
//  SearchViewModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 10.10.2022.
//

import Foundation
protocol SearchViewModelDelegate: AnyObject {
    func reloadTableView()
}

class SearchViewModel {
    weak var delegate: SearchViewModelDelegate?
    let coreDataManager = HotelCoreDataManager()
    var  items = [HotelDetailData]()
    var hotelId : Int = 0
    var isEmpty = false
    
    func getData(searchText:String) {
        isEmpty = false
        let itemsArray = coreDataManager.getData()
        items = itemsArray.filter { $0.hotelName.contains(searchText) }
        delegate?.reloadTableView()

}
    func clearData() {
        isEmpty = true
        items = []
        delegate?.reloadTableView()
    }

}
    
