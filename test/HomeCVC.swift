//
//  HomeCVC.swift
//  test
//
//  Created by Aditya on 2/22/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HomeCVC: UICollectionViewController {
    
    var icons = [UIImage]()
    
    
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
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected index path \(indexPath.row)")
        if (indexPath.row == 0){
            performSegue(withIdentifier: "recents", sender: nil)
        }
        if (indexPath.row == 1){
            performSegue(withIdentifier: "cart", sender: nil)
        }
        if (indexPath.row == 2){
            performSegue(withIdentifier: "groceries", sender: nil)
        }
        if (indexPath.row == 3){
            performSegue(withIdentifier: "clothing", sender: nil)
        }
        if (indexPath.row == 4){
            performSegue(withIdentifier: "movies", sender: nil)
        }
        if (indexPath.row == 5){
            performSegue(withIdentifier: "garden", sender: nil)
        }
        if (indexPath.row == 6){
            performSegue(withIdentifier: "electronics", sender: nil)
        }
        if (indexPath.row == 7){
            performSegue(withIdentifier: "books", sender: nil)
        }
        if (indexPath.row == 8){
            performSegue(withIdentifier: "appliances", sender: nil)
        }
        if (indexPath.row == 9){
            performSegue(withIdentifier: "toys", sender: nil)
        }
        
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//         Get the new view controller using [segue destinationViewController].
//         Pass the selected object to the new view controller.
//    }
    
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "home", for: indexPath)
        
        // Configure the cell
        cell.backgroundView = UIImageView(image: icons[indexPath.row])
        
        
        return cell
    }
    
    
    
}
