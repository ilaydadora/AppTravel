//
//  FlightsViewController.swift
//  TravelApp
//
//  Created by İlayda Metin on 29.09.2022.
//


import UIKit

class FlightsDetailViewController: UIViewController {
    
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    @IBOutlet weak var flightsLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var CategoriesLabel: String = ""
    var FlightsLabel: String = ""
    var TitleLabel: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesLabel.text = CategoriesLabel
        flightsLabel.text = FlightsLabel
        titleLabel.text = TitleLabel
        

    }
    
}
