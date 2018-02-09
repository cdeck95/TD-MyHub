//
//  DataStore.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//
//  Created by Erica Millado on 7/3/17.
//  Copyright © 2017 Erica Millado. All rights reserved.
//
import Foundation
import UIKit

final class DataStore {
    
    static let sharedInstance = DataStore()
    fileprivate init() {}
    
    var apps: [CollectionViewCell] = []
    //let images: [UIImage] = [UIImage(named: "Expense.png")!, UIImage(]
    
    func storeApps(){
        let clarity:CollectionViewCell = CollectionViewCell()
        let image = UIImage(named: "Clarity-PNG")
        clarity.appImage = UIImageView(image: image)
        let labelText = "Clarity"
        let label = UILabel()
        label.text = labelText
        clarity.appLabel = label
        
        let myHR:CollectionViewCell = CollectionViewCell()
        let image2 = UIImage(named: "MY HR")
        let myHRlabelText = "myHR"
        let myHRlabel = UILabel()
        myHRlabel.text = myHRlabelText
        myHR.appLabel = myHRlabel
        myHR.appImage = UIImageView(image: image2)
       
        let expenses:CollectionViewCell = CollectionViewCell()
        let image3 = UIImage(named: "Expense")
        expenses.appImage = UIImageView(image: image3)
        let expenseLabelText = "Expenses"
        let expenseLabel = UILabel()
        expenseLabel.text = expenseLabelText
        expenses.appLabel = expenseLabel
        
        let diamond:CollectionViewCell = CollectionViewCell()
        let image4 = UIImage(named: "DIAMOND")
        let diamondLabelText = "Diamond"
        let diamondLabel = UILabel()
        diamondLabel.text = diamondLabelText
        diamond.appLabel = diamondLabel
        diamond.appImage = UIImageView(image: image4)
        
        let ewr:CollectionViewCell = CollectionViewCell()
        let image5 = UIImage(named: "EWR")
        let ewrLabelText = "EWR"
        let ewrLabel = UILabel()
        ewrLabel.text = ewrLabelText
        ewr.appLabel = ewrLabel
        ewr.appImage = UIImageView(image: image5)
        
        let arp:CollectionViewCell = CollectionViewCell()
        let image6 = UIImage(named: "ARP")
        let arpLabelText = "ARP"
        let arpLabel = UILabel()
        arpLabel.text = arpLabelText
        arp.appLabel = arpLabel
        arp.appImage = UIImageView(image: image6)
        
        apps.append(diamond)
        apps.append(myHR)
        apps.append(expenses)
        apps.append(clarity)
        apps.append(ewr)
        apps.append(arp)
        print("in StoreApps func")
        print(apps)
    }
        
//        APIClient.getAppsAPI { (json) in
//            let feed = json?["feed"] as? Apps
//            if let results = feed?["results"] as? [Apps] {
//                for dict in results {
//                    let newApp = AppModel(dictionary: dict)
//                    self.apps.append(newApp)
//                    print(newApp.label)
//                }
//                completion()
//            }
//        }
//    }
//    func getAppImages(completion: @escaping () -> Void) {
//        getApps {
//            for app in self.apps {
//                    let image = UIImage(data: imageData)
//                    self.images.append(image!)
//                }
//            }
//            OperationQueue.main.addOperation {
//                completion()
//            }
//        }
    }


