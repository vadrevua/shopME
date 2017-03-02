//
//  electronicsDataClass.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit
class electronicsDataClass{
    var electronicsIcons = [UIImage]()
    var electronicsLabels = [String]()
    
    func getElectronicsIconArray() ->[UIImage]{
        electronicsIcons.append(UIImage(named: "laptop-clipart-laptop-md")!)
        //electronicsIcons.append(UIImage(named: "")!)
//        electronicsIcons.append(UIImage(named: "shirt")!)
//        electronicsIcons.append(UIImage(named: "dress-clipart-red-dress-md")!)
        return electronicsIcons
    }
    
    func getElectronicsLabelArray() ->[String]{
        electronicsLabels.append("Laptop")
//        electronicsLabels.append("Shorts")
//        electronicsLabels.append("Shirt")
//        electronicsLabels.append("Dress")
        return electronicsLabels
    }
}
