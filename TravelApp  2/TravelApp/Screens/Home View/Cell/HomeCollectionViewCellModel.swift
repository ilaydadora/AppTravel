//
//  HomeCollectionViewCellModel.swift
//  TravelApp
//
//  Created by İlayda Metin on 9.10.2022.
//

import Foundation

class Visits {
    var visit_id : Int?
    var visit_image_name : String?
    var visit_lbl : String?
    var visit_desc_lbl : String?
    
    init(visit_id: Int, visit_image_name: String, visit_lbl : String, visit_desc_lbl : String ){
        
        
        self.visit_id = visit_id
        self.visit_image_name = visit_image_name
        self.visit_lbl = visit_lbl
        self.visit_desc_lbl = visit_desc_lbl
    }
}
