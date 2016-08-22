//
//  GenericDataSource.swift
//  GenericsDemo
//
//  Created by Jon Friskics on 8/19/16.
//  Copyright © 2016 Code School. All rights reserved.
//

import UIKit

class GenericDataSource<Item>: NSObject, UITableViewDataSource {
    var items: [Item]
    var configureCell: (Item, UITableViewCell) -> ()
    
    init(items: [Item], configureCell: @escaping (Item, UITableViewCell) -> ()) {
        self.items = items
        self.configureCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        configureCell(items[indexPath.row], cell)
        
        return cell
    }

}
