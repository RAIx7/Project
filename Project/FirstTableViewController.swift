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
    var subCategories = [SecondTableList]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categories = ["Hydraulics", "Pneumatics", "Electronics", "Electrical Forumulas", "Metric Conversion", "Technical Drawing"]
        
        subCategories = [SecondTableList(subCategories: ["Hydraulic flow line","Pilot Flow Line","Manifold assembly boundaries","Ball valve","3 way ball valve","Shuttle valve","Check/Shut off valve","Pilot operated check valve","Direction valve","4/3 way position valve","2 position detent valve","4/3 to tank","Pilot operational DV","Proportional DV","Valve activation types","Hydraulic Pressure RV","Electically operated PRV","Pressure reducing valve","Flow control valve","Meter in/out FCV","Pump/Motor","Hydraulic filter","Water cooler","Accumulators","Cylinders"]), SecondTableList(subCategories: ["3/2 way valve","3/3","4/2-way valve","4/3-way valve","5/2-way valve","5/3-way valve","Manual Control General","Manual Control Lever","Mechanical Control Plunger","Solenoid with one effective winding","Combined Control by solenoid and pilot valve","Shuttle valve","Pneumatic indicator","Pressure Control Valve","Air operated"," Manual Control Button","Manual Control Pedal","Mechanical Control Spring","Mechanical Control Roller with idle return","Pressure Control","Pneumatic- Electric-Relay","Silencer"]), SecondTableList(subCategories: ["Electrical wires","Toggle switches","Push buttons", "DIP switch","Relays","Jump/Solder brige","Ground symbols","Resistor","Potentiometer","Variable Resisitor","Trimmer Resistor","Thermistor resistor","Photo resistor","Capacitors","Inductor","Power supply symbols I","Power supply symbols II","Meter symbols","Lamp symbols","Diode/LED symbols I","Diode/LED symbols II","Transistor symbols I","Transistor symbols II","Misc symbols I","Misc symbols II","Misc symbols III","Misc symbols IIII","Antenna symbols","Logic gate symbols I","Logic gate symbols II","Logic gate symbols III"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"])]
        

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        var destinationViewController = segue.destination as! SecondTableViewController
        var subCategoriesArray : SecondTableList
        
        subCategoriesArray = subCategories[indexPath.row]
        destinationViewController.secondCategoriesArray = subCategoriesArray.subCategories
        destinationViewController.title = categories[indexPath.row]
        
    }
    

    
    
    
    
    
    
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
//        var destinationViewController = segue.destination as! SecondTableViewController
//        var secondColorsTableArray : SecondTable
//        
//        secondColorsTableArray = secondColorsArray[indexPath.row]
//        destinationViewController.secondArray = secondColorsTableArray.subColor
//        
//        
//    }
    
    
   




}

