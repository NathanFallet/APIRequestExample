//
//  TableViewController.swift
//  APIRequestExample
//
//  Created by Nathan FALLET on 07/05/2020.
//  Copyright © 2020 Nathan FALLET. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cells
        tableView.register(LibraryTableViewCell.self, forCellReuseIdentifier: "libCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
