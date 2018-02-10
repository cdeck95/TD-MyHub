//
//  ExpensesViewController.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var flag: Int = 0
    var reportRemoved: Int = 0
    var expenses: [String] = ["Ashley Hall", "Chris Deck", "Catherine Liggett", "Stefan Petersen", "Jugal Rathod", "Udayan Majumder"]
    @IBOutlet weak var ExpensesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ExpensesTableView.dataSource = self
        ExpensesTableView.delegate = self
        print(flag)
        if(flag == 1){
            expenses.remove(at: reportRemoved)
            print(expenses)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ ExpensesTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell “PlainCell”
        let cell:ExpenseTableViewCell = ExpensesTableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath) as! ExpenseTableViewCell
        cell.NameLabel.text = expenses[indexPath.row]
        return cell
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
