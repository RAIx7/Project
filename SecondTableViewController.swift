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
    var subCategoryImageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secondCategoriesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath) as UITableViewCell
        cell.textLabel?.text = secondCategoriesArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.font = UIFont(name: "Avenir", size: 17.0)

        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        var destinationViewController = segue.destination as! ImageViewController
        
        destinationViewController.subCategoryImage = subCategoryImageArray[indexPath.row]
        destinationViewController.title = secondCategoriesArray[indexPath.row]

        
        
    }
}
