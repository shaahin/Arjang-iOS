//
//  NamesTableViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 8/29/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit

class NamesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("section: \(indexPath.section) row: \(indexPath.row)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "shahin", for: indexPath)
        cell.textLabel?.text = "Test Label"
        let data: [String:String?] = ["desc": nil]
        
        if let desc = data["desc"]
        {
            cell.detailTextLabel?.text = desc
        }else {
            cell.detailTextLabel?.text = nil
        }
        
        return cell
    }
   
}
