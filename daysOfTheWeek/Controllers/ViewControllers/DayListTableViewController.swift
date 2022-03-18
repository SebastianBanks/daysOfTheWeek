//
//  DayListTableViewController.swift
//  daysOfTheWeek
//
//  Created by Sebastian Banks on 3/17/22.
//

import UIKit

class DayListTableViewController: UITableViewController {
    
    // MARK: - Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DayController.daysOfTheWeek.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        // Configure the cell...
        let day = DayController.daysOfTheWeek[indexPath.row]
        cell.textLabel?.text = day.name

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "toDetailVC" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? DayDetailViewController
                    else { return }
            
            let dayToSend = DayController.daysOfTheWeek[indexPath.row]
            
            destination.day = dayToSend
            
        }
    }

}
