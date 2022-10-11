//
//  HotelsTableViewCell.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//

import UIKit

class HotelsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var hotelsView: UIView!
    
    @IBOutlet weak var hotelsImage: UIImageView!
    
    @IBOutlet weak var hotelsName: UILabel!
    
    @IBOutlet weak var hotelsDesc: UILabel!
    
    @IBOutlet weak var hotelsPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func configure(data: HotelsTableViewCellModel) {
        hotelsName.text = data.name
        hotelsDesc.text = data.address
        hotelsPrice.text = data.price
    }

    
}
