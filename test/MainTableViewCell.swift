//
//  MainTableViewCell.swift
//  tableview
//
//  Created by Mark Hoath on 27/9/17.
//  Copyright © 2017 Mark Hoath. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
