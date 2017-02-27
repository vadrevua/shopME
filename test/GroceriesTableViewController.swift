//
//  GroceriesTableViewController.swift
//  test
//
//  Created by Aditya on 2/27/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {
    
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        items = ["Vegtables", "Fruits", "Other","cows","pigs", "ODSFJ", "Other","cows","pigs", "ODSFJ"]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return items.count
    }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return items.count
//    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "grocery", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        cell.detailTextLabel?.text = "inserted Text"
        cell.imageView?.image = UIImage(named: "grocery-1-tomatoes")
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("You clicked \(items[indexPath.row])")
    }

   
}
