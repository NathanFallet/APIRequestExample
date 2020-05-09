//
//  TableViewController.swift
//  APIRequestExample
//
//  Created by Nathan FALLET on 07/05/2020.
//  Copyright © 2020 Nathan FALLET. All rights reserved.
//

import UIKit
import APIRequest

class TableViewController: UITableViewController {
    
    var root = Root(results: [])

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set a title
        navigationItem.title = "CDN JS Libraries"
        navigationController?.navigationBar.prefersLargeTitles = true

        // Register cells
        tableView.register(LibraryTableViewCell.self, forCellReuseIdentifier: "libCell")
        
        // Load libraries
        loadLibraries()
    }
    
    func loadLibraries() {
        // Load the libraries from API using APIRequest
        APIRequest("GET", path: "/libraries").with(name: "fields", value: "version,description,homepage").execute(Root.self) { data, status in
            // Check that data is correct
            if let root = data {
                // Save the data in the tableView
                self.root = root
                
                // Refresh the tableView
                self.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of libraries in the array
        return root.results?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "libCell", for: indexPath) as? LibraryTableViewCell, let lib = root.results?[indexPath.row] {
            // Set data to the cell
            cell.textLabel?.text = "\(lib.name ?? "No name") v\(lib.version ?? "-")"
            cell.detailTextLabel?.text = lib.description
            
            // Return the cell
            return cell
        }
        fatalError()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let lib = root.results?[indexPath.row], let homepage = lib.homepage, let url = URL(string: homepage) {
            // Open the homepage
            UIApplication.shared.open(url)
        } else {
            // No homepage
            let alert = UIAlertController(title: "No homepage", message: "This library has no homepage!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

}
