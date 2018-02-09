//
//  ViewController.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/8/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    @IBOutlet weak var loginID: UITextField!
    @IBOutlet weak var domain: UIPickerView!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var LoginButton: CustomButton!
    var pickerData: [String] = ["BKNG", "TDBFG", "RNET", "TD Securities", "MMI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Connect data:
        self.domain.delegate = self
        self.domain.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }


}

