//
//  HomeViewController.swift
//  kuppa
//
//  Created by Deepak Singh Shekhawat on 31/08/22.
//

import UIKit

class HomeViewController: UIViewController, UISearchBarDelegate,UISearchControllerDelegate {
 
    @IBOutlet var chickenView: UIView!
    @IBOutlet var addView: UIView!
   
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var dataView: UIView!
    @IBOutlet var ordernowbtn: UIButton!
    var myData = [restoData]()
    var searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        ordernowbtn.layer.cornerRadius = 10
        ordernowbtn.clipsToBounds = true
        chickenView.layer.cornerRadius = 20
        chickenView.clipsToBounds = true
        addView.layer.cornerRadius = 20
        addView.clipsToBounds = true
        searchBarSetup()
        myData = [restoData(dishimg: "biryani", dishName:" Biryani", dishValue: " $20"),restoData(dishimg: "chicken", dishName: "Chicken Tiyari", dishValue: "$30"),restoData(dishimg: "chickentika", dishName: "chickentika", dishValue: "$20"),restoData(dishimg: "cholebhature", dishName: "Chole Bhature", dishValue: "$15"),restoData(dishimg: "dosa", dishName: "Dossa", dishValue: "$15"),restoData(dishimg: "fruitsalad", dishName: "Fruit Salad", dishValue: "$15"),restoData(dishimg: "khaman", dishName:" Khaman", dishValue: ""),restoData(dishimg: "pannertikka", dishName: "Paneer Tika", dishValue: "Rs. 300"),restoData(dishimg: "pasta", dishName: "Pasta", dishValue: "$12"),restoData(dishimg: "rasmali", dishName: "Rasmalai ", dishValue: "$20"),restoData(dishimg: "vegsandwish", dishName: "Sandwitch", dishValue: "$10"),restoData(dishimg: "fruitsalad", dishName: "Fruit Salad", dishValue: "$10")]
    }
    
   private func searchBarSetup()
    {
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        
    }

    @IBAction func ordernowTapped(_ sender: Any) {
    }
    @IBAction func addressbtn(_ sender: Any) {
    }
}

extension HomeViewController: UISearchResultsUpdating
{
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text
        else{ return }
        if searchText == ""{
            
        }else
        {
            
        }
    }
}
extension HomeViewController: UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myData.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:HomeCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.addValue(myData[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
       return CGSize(width: 130, height: 150)
    }
  
}
