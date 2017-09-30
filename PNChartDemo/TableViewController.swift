//
//  TableViewController.swift
//  PNChartDemo
//
//  Created by WhatsXie on 2017/9/30.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destinationVC = ViewController()
        switch indexPath.row {
        case 0:
            destinationVC.chartName = "Pie Chart"
        case 1:
            destinationVC.chartName = "Bar Chart"
        default:
            destinationVC.chartName = "Line Chart"
        }
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
}
