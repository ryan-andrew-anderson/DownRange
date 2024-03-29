//
//  DropChartTableViewController.swift
//  DownRange
//
//  Created by Ryan Anderson on 2/9/21.
//

import UIKit

//To BE Continued After MVP
class DropChartTableViewController: UITableViewController {
    var dropCharts: [DropChart] = [DropChart(caliber: 0.300, weight: 0.150, muzzleVelocity: 3400, ballisticsCoeffcient: 0.415, range: 0, drop: 0, velocity: 3400, energy: 4000, timeOfFlight: 0)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dropCharts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         guard let cell = tableView.dequeueReusableCell(withIdentifier:"DropChartCell", for: indexPath) as? DropChartTableViewCell
        else { return UITableViewCell()}
        
        let dChart = dropCharts[indexPath.row]
        cell.updateChart(with: dChart)
        return cell
    }
}
