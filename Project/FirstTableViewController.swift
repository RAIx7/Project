//
//  ViewController.swift
//  Project
//
//  Created by Sanjay Rai on 20/04/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var categories = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categories = ["Hydraulics", "Pneumatics", "Electronics", "Electrical Forumulas", "Metric Conversion", "Technical Drawing"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath) as UITableViewCell
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
    }


}

