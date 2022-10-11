//
//  FlightsViewController.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//


import UIKit

class HotelsDetailViewController: UIViewController {
    
   lazy var viewModel : HotelsDetailViewModel? = HotelsDetailViewModel()
    let hotelCoreDataManager = HotelCoreDataManager()
    
    
    @IBOutlet weak var detailView: UIView!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    @IBOutlet weak var titleDetail: UILabel!
    
    @IBOutlet weak var detailTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.getData()
        viewModel?.delegate = self
        
    
    }
    
    
    @IBAction func AddButton(_ sender: Any) {
        hotelCoreDataManager.addData(data: HotelDetailData(hotelName: titleDetail.text ?? "", hotelAddress: detailTextView.text ?? "", hotelPrice: categoriesLabel.text ?? "",hotelId: viewModel?.hotelId ?? 0 ))
        
    }
    
}

extension HotelsDetailViewController: HotelsDetailViewModelDelegate {
    func setData(hotelName: String, hotelDesc: String,hotelPrice: String) {
        DispatchQueue.main.async {
            self.titleDetail.text = hotelName
            self.detailTextView.text = hotelDesc
            self.categoriesLabel.text = hotelPrice
        }
    }
    
}

