//
//  HotelsViewModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//

import Foundation
protocol HotelsViewModelDelegate: AnyObject {
    func reloadData()
}
class HotelsViewModel {
    let hotelsNetworkManager = HotelsNetworkManager()
     var itemsArray: HotelsNetworkModel?
    // NetworkModele erişim.
    
    weak var delegate: HotelsViewModelDelegate?
    // ViewModel'i -> ViewController'a aktarma
    

func getData() {
    hotelsNetworkManager.getData(urlString: "https://hotels4.p.rapidapi.com/properties/list?destinationId=1692591&pageNumber=1&pageSize=10&checkIn=2022-12-10&checkOut=2022-12-15&adults1=2&currency=TRY&locale=tr_TR", completionHandler: { (result: HotelsNetworkModel) in
        self.bindData(result: result)
        // getData -> NetworkManager ile ViewModeli Birbirine Bağlama
})
}
private func bindData(result: HotelsNetworkModel) {
    guard (itemsArray != nil) else {
        itemsArray = result
        delegate?.reloadData()
        return
    }
    for element in result.data.body.searchResults.results {
        itemsArray?.data.body.searchResults.results.append(element)
    }
    delegate?.reloadData()
    
    // bindData -> NetworkManagerda erişecelek veri

}
func getArrayCount() -> Int {
    return self.itemsArray?.data.body.searchResults.results.count ?? 0
    
    // getArrayCount -> numberOfRowsInSection
}
func getItemData(indexPath: IndexPath) -> HotelsTableViewCellModel? {
    if let networkArray = itemsArray?.data.body.searchResults.results {
        return HotelsTableViewCellModel(name: networkArray[indexPath.row].name, address: networkArray[indexPath.row].address.streetAddress,price:
                                            networkArray[indexPath.row].ratePlan.price.current)
    }
                                        
    return nil
}
}
// getItemData -> cellForRowAt
