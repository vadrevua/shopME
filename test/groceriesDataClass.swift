//
//  groceriesDataClass.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class groceriesDataClass{
    var icons = [UIImage]()
    var labels = [String]()
    func getGroceriesIconArray() ->[UIImage]{
        icons.append(UIImage(named: "grocery-1-tomatoes")!)
        icons.append(UIImage(named: "grocery-2-bananas")!)
        icons.append(UIImage(named: "grocery-3-gala")!)
        icons.append(UIImage(named: "grocery-4-lettuce")!)
        icons.append(UIImage(named: "grocery-5-broccoli")!)
        icons.append(UIImage(named: "grocery-6-milk")!)
        icons.append(UIImage(named: "grocery-7-bread")!)
        icons.append(UIImage(named: "grocery-8-eggs")!)
        return icons
    }
    
    func getGroceriesLabelArray() ->[String]{
        labels.append("tomatoes")
        labels.append("bananas")
        labels.append("gala")
        labels.append("lettuce")
        labels.append("broccoli")
        labels.append("milk")
        labels.append("bread")
        labels.append("eggs")
        return labels
    }
    
}



