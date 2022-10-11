//
//  FlightsTableViewCell.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//

import UIKit

class FlightsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var flightsView: UIView!
    @IBOutlet weak var flightsImage: UIImageView!
    @IBOutlet weak var flightsName: UILabel!
    @IBOutlet weak var flightsDesc: UILabel!
    @IBOutlet weak var flightsNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    func configure(data: FlightsTableViewCellModel) {
        flightsName.text = data.name
        flightsDesc.text = data.desc
        flightsNumber.text = data.number
        
     
    }
    
}


