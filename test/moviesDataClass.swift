//
//  moviesDataClass.swift
//  test
//
//  Created by Aditya on 3/1/17.
//  Copyright © 2017 Aditya. All rights reserved.
//

import UIKit

class moviesDataClass {
    var movIcons = [UIImage]()
    var movLabels = [String]()
    func getMovIconArray() ->[UIImage]{
        movIcons.append(UIImage(named: "movies-1-shawshank")!)
        movIcons.append(UIImage(named: "movies-2-lord-of-the-rings")!)
        movIcons.append(UIImage(named: "movies-3-godfather")!)
        return movIcons
    }
    
    func getMovLabelArray() ->[String]{
        movLabels.append("The Shawshank Redemption")
        movLabels.append("The Lord of the Rings")
        movLabels.append("The Godfather")
        return movLabels
    }

}
