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
    var notifications:Int = 0

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // ...
    }
    
    func displayContent(image: UIImage, title: String, notificationsIn: Int){
        self.appImage.image = image
        self.appLabel.text = title
        self.notifications = notificationsIn
    }
}

