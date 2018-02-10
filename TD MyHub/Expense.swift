//
//  Expense.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import Foundation
import UIKit

struct Expense {
    
    var item:String = ""
    var cost:String = ""

    init(costLabel: UILabel, itemLabel: UILabel){
        item = itemLabel.text!
        cost = costLabel.text!
        
    }
}
