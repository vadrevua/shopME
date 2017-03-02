//
//  ClothingDataClass.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit
class ClothingDataClass{
    var clothIcons = [UIImage]()
    var clothLabels = [String]()
    
    func getClothesIconArray() ->[UIImage]{
        clothIcons.append(UIImage(named: "869d26dab6a134bd63bc4d5e7b3bbdc2_pant-pant-clip-art_300-300")!)
        clothIcons.append(UIImage(named: "download")!)
        clothIcons.append(UIImage(named: "shirt")!)
        clothIcons.append(UIImage(named: "dress-clipart-red-dress-md")!)
        return clothIcons
    }
    
    func getClothesLabelArray() ->[String]{
        clothLabels.append("Pants")
        clothLabels.append("Shorts")
        clothLabels.append("Shirt")
        clothLabels.append("Dress")
        return clothLabels
    }
}
