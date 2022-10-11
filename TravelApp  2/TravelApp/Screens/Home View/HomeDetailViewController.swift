//
//  HomeDetailViewController.swift
//  TravelApp
//
//  Created by İlayda Metin on 9.10.2022.
//

import UIKit

class HomeDetailViewController: UIViewController {
    
    
    @IBOutlet weak var visitImage: UIImageView!
    
    @IBOutlet weak var visitTitle: UILabel!
    
    @IBOutlet weak var visitDesc: UITextView!
    
    var visitimage : String = ""
    var visittitle : String = ""
    var visitdesc : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitImage.image = UIImage(named: visitimage)
        visitTitle.text = visittitle
        visitDesc.text = visitdesc
        
    }


}
