//
//  DayDetailViewController.swift
//  daysOfTheWeek
//
//  Created by Sebastian Banks on 3/17/22.
//

import UIKit

class DayDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var dayOriginLabel: UILabel!
    
    
    // MARK: - Properties
    var day: Day?

    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: - Helper Methods

    func updateViews() {
        
        guard let day = day else { return }
        dayNameLabel.text = day.name
        dayNameLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        dayOriginLabel.text = day.origin
    }

}
