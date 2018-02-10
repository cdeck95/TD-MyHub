//
//  APIClient.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import Foundation
import UIKit

typealias Apps = [String: Any]

struct APIClient {
    
    static func getAppsAPI() -> [String:Any] {
        
//        let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/audiobooks/top-audiobooks/10/explicit/json")
//
//        let session = URLSession.shared
//
//        guard let unwrappedURL = url else { print("Error unwrapping URL"); return }
//
//        let dataTask = session.dataTask(with: unwrappedURL) { (data, response, error) in
//
//            guard let unwrappedDAta = data else { print("Error unwrapping data"); return }
        let clarity:CollectionViewCell = CollectionViewCell()
        clarity.appImage.image = UIImage(named: ("Clarity"))
        let myHR:CollectionViewCell = CollectionViewCell()
        myHR.appImage.image = UIImage(named: ("MY HR"))
        //["image": UIImage(named: ("Clarity"))!, "label":"Clarity", "notifications":1]
        //let myHR:[String: Any] = ["image": UIImage(named: ("MY HR"))!, "label":"myHR", "notifications":10]
        let apps:[String: Any] = ["app":clarity, "app":myHR] as Apps
//        do{
//            let appsJSON = try JSONSerialization.data(withJSONObject: apps, options: [])
//            let responseJSON = try JSONSerialization.jsonObject(with: appsJSON, options: []) as? AppsJSON
//            completion(apps)
//        } catch {
//            print("Could not convert to JSON.  \(error), \(error.localizedDescription)")
//        }
        print("In API Client")
        print(apps)
       return apps
        }
//        dataTask.resume()
    }

