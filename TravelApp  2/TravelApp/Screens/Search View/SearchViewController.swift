//
//  SearchViewController.swift
//  TravelApp
//
//  Created by İlayda Metin on 28.09.2022.
//

import UIKit


class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    var viewModel: SearchViewModel? = SearchViewModel()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.delegate = self
        preapreCell()

    }
    
    func preapreCell() {
            searchTableView.dataSource = self
            searchTableView.delegate = self
            searchTableView.register(UINib(nibName: "HotelsTableViewCell", bundle: nil), forCellReuseIdentifier: "hotelsCell")
        searchBar.delegate = self
            
        }
    }

    extension SearchViewController: UITableViewDataSource {
        func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return viewModel?.items.count ?? 0

        }
        func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = searchTableView.dequeueReusableCell(withIdentifier: "hotelsCell", for: indexPath) as? HotelsTableViewCell else {return UITableViewCell()}

            cell.configure(data: HotelsTableViewCellModel(name: viewModel?.items[indexPath.row].hotelName ?? "" , address: viewModel?.items[indexPath.row].hotelAddress ?? "", price: viewModel?.items[indexPath.row].hotelPrice ?? ""))

                return cell
        }
    }
    extension SearchViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC : SearchDetailViewController = storyBoard.instantiateViewController(withIdentifier: "SearchDetailViewController") as! SearchDetailViewController
            destinationVC.searchtitle = viewModel?.items[indexPath.row].hotelName ?? ""
            destinationVC.searchdesc = viewModel?.items[indexPath.row].hotelAddress ?? ""
            destinationVC.searchprice = viewModel?.items[indexPath.row].hotelPrice ?? ""
            self.navigationController?.pushViewController(destinationVC, animated: true)
        }


}
extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if(searchText.isEmpty) {
            viewModel?.clearData()
        }
        else {
            if(searchText.count >= 3) {
                viewModel?.getData(searchText: searchText)
            }
            
            if(searchText.count < 3) {
                print("3 Harften fazla giriniz")
            }
        }
        
    }
    
}
extension SearchViewController: SearchViewModelDelegate {
    func reloadTableView() {
        DispatchQueue.main.async {
            self.searchTableView.reloadData()
        }
    }
}
