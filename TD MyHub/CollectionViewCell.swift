//
//  CollectionViewCell.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var appImage: UIImageView!
    @IBOutlet var appLabel: UILabel!
    
    func displayContent(image: UIImage, title: String){
        appImage.image = image
        appLabel.text = title
    }
}

