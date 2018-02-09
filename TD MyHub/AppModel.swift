//
//  AppModel.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import Foundation
import UIKit

struct AppModel {
    let name:String = ""
    let image:String = ""
    let notifications:Int = 0
    
    init(dictionary: AppModelJSON){
        self.name = dictionary["name"]
        self.image = dictionary["image"]
        self.notifications = dictionary["notifications"]
    }
}
