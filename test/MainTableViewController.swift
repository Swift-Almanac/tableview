//
//  MainTableViewController.swift
//  tableview
//
//  Created by Mark Hoath on 27/9/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

let callSigns: [String] = ["Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot"]
let kReUseIdentifier: String = "main"

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: kReUseIdentifier)
    }


    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45.0
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return callSigns.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: kReUseIdentifier, for: indexPath) as? MainTableViewCell else {
            fatalError("Bad Cell = Could Not Cast")
        }
        cell.textLabel?.text = callSigns[indexPath.row]

        return cell
    }

}
