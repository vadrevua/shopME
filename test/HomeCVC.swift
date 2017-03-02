//
//  HomeCVC.swift
//  test
//
//  Created by Aditya on 2/22/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"
var icons = [UIImage]()
var labels = [String]()

class HomeCVC: UICollectionViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        icons.append(UIImage(named: "category-1-recent")!)
        icons.append(UIImage(named: "category-2-cart")!)
        icons.append(UIImage(named: "category-3-grocery")!)
        icons.append(UIImage(named: "category-4-clothing")!)
        icons.append(UIImage(named: "category-5-movies")!)
        icons.append(UIImage(named: "category-6-garden")!)
        icons.append(UIImage(named: "category-7-electronics")!)
        icons.append(UIImage(named: "category-8-books")!)
        icons.append(UIImage(named: "category-9-appliances")!)
        icons.append(UIImage(named: "category-10-toys")!)
        labels.append("recent")
        labels.append("cart")
        labels.append("grocery")
        labels.append("clothing")
        labels.append("movies")
        labels.append("garden")
        labels.append("electronics")
        labels.append("books")
        labels.append("appliances")
        labels.append("toys")
        
        // Register cell classes
        self.collectionView!.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        // Do any additional setup after loading the view.
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected index path \(indexPath.row)")
        
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toTVC"){
            if let categoryViews = segue.destination as? categoryTableViewController{
                categoryViews.selectedItem = (sender as! MainCollectionViewCell).homeTextLabel.text!
                
                
            }
        }
        else if(segue.identifier == "recentsSegue"){
            print("recents")
        }
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        //nothin
    
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return icons.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "home", for: indexPath) as? MainCollectionViewCell
        
        // Configure the cell
        cell?.homeImageView.image =  icons[indexPath.row]
        cell?.homeTextLabel.text = labels[indexPath.row]
        
        
        return cell!
    }
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//    }
    
}
