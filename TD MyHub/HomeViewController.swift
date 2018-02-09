//
//  HomeViewController.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var Search: UITextField!
    @IBOutlet weak var collection: UICollectionView!
    var reuseIdentifier:String = "collectionViewCell"
    var store = DataStore.sharedInstance
    var dataArray : [String] = []
    var receivedData : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        store.storeApps()
        //self.collection!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        collection.delegate = self
        collection.dataSource = self
        collection.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func register(_ nib: UINib?,
//                  forCellWithReuseIdentifier identifier: String){
//        reuseIdentifier = identifier
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        for app in store.apps {
//            print("in count section")
//            print(app.appLabel)
//            print(app.notifications)
//            print(app.appImage)
//        }
        return store.apps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        let app = store.apps[indexPath.row]
        print("in array method")
        print(app.appLabel)
        print(app.notifications)
        print(app.appImage)
        let image:UIImage = app.appImage.image!
        let title:String = app.appLabel.text!
        cell.displayContent(image: image, title: title, notificationsIn: app.notifications)
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.connected(_:)))
        
        cell.appImage.isUserInteractionEnabled = true
        cell.appImage.tag = indexPath.row
        cell.appImage.addGestureRecognizer(tapGestureRecognizer)
        return cell
    }
    
    
    @IBAction func Search(_ sender: Any) {
    }
    
    @objc func connected(_ sender:AnyObject){
        print("you tap image number : \(sender.view.tag)")
        switch sender.view.tag {
        case 0:
//            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "3") as! ExpensesViewController
//            self.navigationController!.pushViewController(VC1, animated: true)
            print("going to Diamond")
        case 1:
            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "3") as! ExpensesViewController
            self.navigationController!.pushViewController(VC1, animated: true)
            print("going to myHR")
        case 2:
            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "3") as! ExpensesViewController
            self.navigationController!.pushViewController(VC1, animated: true)
            print("going to expenses")
        case 3:
            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "3") as! ExpensesViewController
            self.navigationController!.pushViewController(VC1, animated: true)
            print("going to Clarity")
        default:
            print("error")
        }
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
