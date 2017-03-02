//
//  categoryTableViewController.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//
import UIKit

class categoryTableViewController: UITableViewController {
    var selectedItem = ""
    
    var groceryItems = [String]()
    var groceryIcon = [UIImage]()
    var movieItems = [String]()
    var movieIcons = [UIImage]()
    var clothingItems = [String]()
    var clothingIcons = [UIImage]()
    var gardenItems = [String]()
    var gardenIcons = [UIImage]()
    //Double array of the shopping item Make new swift for data classes
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print(selectedItem)
        let groceries = groceriesDataClass()
        let movies = moviesDataClass()
        let clothes = ClothingDataClass()
        let garden = gardenDataClass()
        
        groceryItems = groceries.getGroceriesLabelArray()
        movieItems = movies.getMovLabelArray()
        clothingItems = clothes.getClothesLabelArray()
        gardenItems = garden.getGardenLabelArray()
        
        
        groceryIcon = groceries.getGroceriesIconArray()
        movieIcons = movies.getMovIconArray()
        clothingIcons = clothes.getClothesIconArray()
        gardenIcons = garden.getGardenIconArray()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(selectedItem == "grocery"){
            return groceryItems.count
        }
        if(selectedItem == "movies"){
            return movieItems.count
        }
        if(selectedItem == "clothing"){
            return clothingItems.count
        }
        if(selectedItem == "garden"){
            return gardenItems.count
        }
            
        
        else{ return 5}
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryView", for: indexPath)
        if(selectedItem == "grocery"){
            cell.textLabel?.text = groceryItems[indexPath.row]
            cell.imageView?.image = groceryIcon[indexPath.row]
        }
        
        if(selectedItem == "movies"){
            cell.textLabel?.text = movieItems[indexPath.row]
            cell.imageView?.image = movieIcons[indexPath.row]
        }
        
        if(selectedItem == "clothing"){
            cell.textLabel?.text = clothingItems[indexPath.row]
            cell.imageView?.image = clothingIcons[indexPath.row]
        }
        
        if(selectedItem == "garden"){
            cell.textLabel?.text = gardenItems[indexPath.row]
            cell.imageView?.image = gardenIcons[indexPath.row]
        }
        
        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // print("You clicked \(items[[indexPath.row]])")
    }
    
    
}
