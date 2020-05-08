//
//  LibraryTableViewCell.swift
//  APIRequestExample
//
//  Created by Nathan FALLET on 07/05/2020.
//  Copyright © 2020 Nathan FALLET. All rights reserved.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        // Just make a cell with a title and subtitle
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
