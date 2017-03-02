//
//  gardenDataClass.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit
class gardenDataClass {
    var gardenIcons = [UIImage]()
    var gardenLabels = [String]()
    func getGardenIconArray() ->[UIImage]{
        gardenIcons.append(UIImage(named: "garden-1-shovel")!)
        gardenIcons.append(UIImage(named: "garden-2-tomato-plant")!)
        gardenIcons.append(UIImage(named: "garden-3-mower")!)
        gardenIcons.append(UIImage(named: "garden-4-garden-soil")!)
        gardenIcons.append(UIImage(named: "garden-5-fruit-tree")!)
        gardenIcons.append(UIImage(named: "garden-6-leaves-rake")!)
        return gardenIcons
    }
    
    func getGardenLabelArray() ->[String]{
        gardenLabels.append("Shovel")
        gardenLabels.append("Tomato Plant")
        gardenLabels.append("Mower")
        gardenLabels.append("Garden Soil")
        gardenLabels.append("Fruit Tree")
        gardenLabels.append("Leaves Rake")
        return gardenLabels
    }
    
}

