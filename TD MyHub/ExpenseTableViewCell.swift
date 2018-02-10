//
//  ExpenseTableViewCell.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import UIKit

class ExpenseTableViewCell: UITableViewCell {

    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.5
    @IBOutlet weak var ReviewButton: CustomButton!
    @IBOutlet weak var NameLabel: UILabel!
    
//    @IBAction func ReviewExpense(_ sender: Any) {
//        let VC1 = ExpensesViewController.storyboard!.instantiateViewController(withIdentifier: "4") as! ExpenseReportViewController
//        self.navigationController!.pushViewController(VC1, animated: true)
//        print("going to expense report")
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.bringSubview(toFront: ReviewButton)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            
            layer.cornerRadius = cornerRadius
            let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
            
            layer.masksToBounds = false
            layer.shadowColor = shadowColor?.cgColor
            layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
            layer.shadowOpacity = shadowOpacity
            layer.shadowPath = shadowPath.cgPath
        }// Configure the view for the selected state
}
