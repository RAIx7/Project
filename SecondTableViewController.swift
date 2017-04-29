//
//  SecondTableViewController.swift
//  Project
//
//  Created by Sanjay Rai on 21/04/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import Foundation
import UIKit

class SecondTableViewController: UITableViewController {
    
    var secondCategoriesArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondCategoriesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath) as UITableViewCell
        cell.textLabel?.text = secondCategoriesArray[indexPath.row]
        
        return cell
        
    }
}
