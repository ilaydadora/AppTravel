//
//  ViewController.swift
//  TravelApp
//
//  Created by İlayda Metin on 27.09.2022.
//

import UIKit

class HomePViewController: UIViewController {
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    var viewModel : HomeViewModel? = HomeViewModel()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareCell()
        viewModel?.visit()
        
}
    func prepareCell() {
        homeCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        
    }
}
extension HomePViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.visitList.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let visit = viewModel?.visitList[indexPath.row]
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.homeimage.image = UIImage(named: visit?.visit_image_name ?? "")
        cell.hometitle.text = visit?.visit_lbl ?? ""
        cell.homedesc.text = visit?.visit_desc_lbl ?? ""
        return cell
    }
    
    
}
extension HomePViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC : HomeDetailViewController = storyBoard.instantiateViewController(withIdentifier: "HomeDetailViewController") as! HomeDetailViewController
        destinationVC.visitdesc = viewModel?.visitList[indexPath.row].visit_desc_lbl ?? ""
        destinationVC.visittitle = viewModel?.visitList[indexPath.row].visit_lbl ?? ""
        destinationVC.visitimage = viewModel?.visitList[indexPath.row].visit_image_name ?? ""
        
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
}


