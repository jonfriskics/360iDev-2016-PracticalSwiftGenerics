//
//  CourseTableViewController.swift
//  GenericsDemo
//
//  Created by Jon Friskics on 8/19/16.
//  Copyright © 2016 Code School. All rights reserved.
//

import UIKit

private class Cell: UITableViewCell {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class CourseTableViewController: UITableViewController {
    
    let dataSource = GenericDataSource(items: MockData.courses) { (course, cell) in
        cell.textLabel?.text = course.title
        cell.detailTextLabel?.text = course.path.rawValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(Cell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = dataSource
    }
    
}
