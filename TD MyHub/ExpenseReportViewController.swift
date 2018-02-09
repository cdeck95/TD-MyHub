//
//  ExpenseReportViewController.swift
//  TD MyHub
//
//  Created by Christopher Deck on 2/9/18.
//  Copyright © 2018 Christopher Deck. All rights reserved.
//

import UIKit

class ExpenseReportViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ExpenseReportTableView: UITableView!
    var expenseArray:[Expense] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ExpenseReportTableView.dataSource = self
        ExpenseReportTableView.delegate = self
        let flightItemLabel = UILabel()
        flightItemLabel.text = "Flight"
        let flightCostLabel = UILabel()
        let flightCostLabelText = "$500.00"
        flightCostLabel.text = flightCostLabelText
        let expense:Expense = Expense(costLabel: flightCostLabel, itemLabel: flightItemLabel)
        expenseArray.append(expense)
        
        let carItemLabel = UILabel()
        carItemLabel.text = "Taxi"
        let carCostLabel = UILabel()
        let carCostLabelText = "$18.50"
        carCostLabel.text = carCostLabelText
        let expense2:Expense = Expense(costLabel: carCostLabel, itemLabel: carItemLabel)
        expenseArray.append(expense2)
        
        let dinnerItemLabel = UILabel()
        dinnerItemLabel.text = "Dinner"
        let dinnerCostLabel = UILabel()
        let dinnerCostLabelText = "$46.73"
        dinnerCostLabel.text = dinnerCostLabelText
        let expense3:Expense = Expense(costLabel: dinnerCostLabel, itemLabel: dinnerItemLabel)
        expenseArray.append(expense3)
        
        let hotelItemLabel = UILabel()
        hotelItemLabel.text = "Hotel"
        let hotelCostLabel = UILabel()
        let hotelCostLabelText = "$150.00"
        hotelCostLabel.text = hotelCostLabelText
        let expense4:Expense = Expense(costLabel: hotelCostLabel, itemLabel: hotelItemLabel)
        expenseArray.append(expense4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell “PlainCell”
        let cell2:ExpenseReportTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath) as! ExpenseReportTableViewCell
        print(expenseArray[indexPath.row])
        let expense:Expense = expenseArray[indexPath.row]
        print("Expense object: \(expense)")
        let costLabel = UILabel()
        let costLabelText = expense.cost
        costLabel.text = costLabelText
        cell2.CostLabel = costLabel
        //print("Cost Label Text \(cell.CostLabel.text)")
        
        let itemLabel = UILabel()
        let itemLabelText = expense.item
        itemLabel.text = itemLabelText
        cell2.ItemLabel = itemLabel
        //print("Item Label Text \(cell.ItemLabel.text)")
        
        return cell2
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
