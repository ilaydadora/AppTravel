//
//  BookmarksViewModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 28.09.2022.
//

import Foundation
class BookmarkViewModel {
    let coreDataManager = HotelCoreDataManager()
    var  items = [HotelDetailData]()
    var hotelId : Int = 0
    
    
    
    
    func getData() {
        items = coreDataManager.getData()
        print(items)
       
}


    }
