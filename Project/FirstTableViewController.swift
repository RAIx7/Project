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
    var subCategoriesContainer = [SubCategoryImages]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categories = ["Hydraulic Symbols", "Pneumatic Symbols", "Electronics Symbols", "Electrical Forumulas", "Metric Conversion", "Technical Drawing"]
        
        subCategories = [SecondTableList(subCategories: ["Hydraulic flow line","Pilot Flow Line","Manifold assembly boundaries","Ball valve","3 way ball valve","Shuttle valve","Check/Shut off valve","Pilot operated check valve","Direction valve","4/3 way position valve","2 position detent valve","4/3 to tank","Pilot operational DV","Proportional DV","Valve activation types","Hydraulic Pressure RV","Electically operated PRV","Pressure reducing valve","Flow control valve","Meter in/out FCV","Pump/Motor","Hydraulic filter","Water cooler","Accumulators","Cylinders"]), SecondTableList(subCategories: ["3/2 way valve","3/3 way valve","4/2-way valve","4/3-way valve","5/2-way valve","5/3-way valve","Manual Control General","Manual Control Lever","Mechanical Control Plunger","Solenoid with one effective winding","Combined Control by solenoid and pilot valve","Shuttle valve","Pneumatic indicator","Pressure Control Valve","Air operated"," Manual Control Button","Manual Control Pedal","Mechanical Control Spring","Mechanical Control Roller with idle return","Pressure Control","Pneumatic- Electric-Relay","Silencer"]), SecondTableList(subCategories: ["Electrical wires","Toggle switches","Push buttons", "DIP switch","Relays","Jump/Solder brige","Ground symbols","Resistor","Potentiometer","Variable Resisitor","Trimmer Resistor","Thermistor resistor","Photo resistor","Capacitors","Inductor","Power supply symbols I","Power supply symbols II","Meter symbols","Lamp symbols","Diode/LED symbols I","Diode/LED symbols II","Transistor symbols I","Transistor symbols II","Misc symbols I","Misc symbols II","Misc symbols III","Misc symbols IIII","Antenna symbols","Logic gate symbols I","Logic gate symbols II","Logic gate symbols III"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"]), SecondTableList(subCategories: ["GreenOne","GreenTwo","GreenThree"])]
        

         subCategoriesContainer = [SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!, UIImage(named: "PilotFlowLine.png")!, UIImage(named: "ManifoldAssemblyBoundaries.png")!, UIImage(named: "BallValve.png")!, UIImage(named: "3WayBallValve.png")!, UIImage(named: "ShuttleValve.png")!, UIImage(named: "Check:ShutOffValve.png")!, UIImage(named: "PilotOperatedCheckValve")!, UIImage(named: "DirectionalValve.png")!, UIImage(named: "4:3WayPositionValve.png")!, UIImage(named: "2PositionDetentValve.png")!, UIImage(named: "4:3WayConnectedToTank.png")!, UIImage(named: "PilotOperatedDV.png")!, UIImage(named: "ProportionalDV.png")!, UIImage(named: "ValveActivationTypes.png")!, UIImage(named: "PressureReliefValve.png")!, UIImage(named: "ElectricallyOperatedPRV.png")!, UIImage(named: "PressureReducingValves.png")!, UIImage(named: "FlowControlValve.png")!, UIImage(named: "MeterIn:OutFCV.png")!, UIImage(named: "PumpAndMotor.png")!, UIImage(named: "HydraulicFilter.png")!, UIImage(named: "WaterCooler.png")!, UIImage(named: "Accumulators.png")!, UIImage(named: "Cylinders.png")!]),
        
                    SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!]),
                    SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!]),
                    SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!]),
                    SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!]),
                    SubCategoryImages(subCategoriesImagesArray: [UIImage(named: "HydraulicFlowLine.png")!]) ]
        

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
        cell.textLabel?.font = UIFont(name: "Avenir", size: 17.0)
        
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(named: "Icon1.png")
        case 1:
            cell.imageView?.image = UIImage(named: "Icon2.png")
        case 2:
            cell.imageView?.image = UIImage(named: "Icon3.png")
        case 3:
            cell.imageView?.image = UIImage(named: "Icon4.png")
        case 4:
            cell.imageView?.image = UIImage(named: "Icon5.png")
        case 6:
            cell.imageView?.image = UIImage(named: "Icon6.png")
        default:
            cell.imageView?.image = UIImage(named: "Icon6.png")
        }
        
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var indexPath : IndexPath = self.tableView.indexPathForSelectedRow!
        var destinationViewController = segue.destination as! SecondTableViewController
        var subCategoriesArray : SecondTableList
        
        subCategoriesArray = subCategories[indexPath.row]
        destinationViewController.secondCategoriesArray = subCategoriesArray.subCategories
        destinationViewController.title = categories[indexPath.row]
        
        var subCategoryImagesArray : SubCategoryImages
        
        subCategoryImagesArray = subCategoriesContainer[indexPath.row]
        
        destinationViewController.subCategoryImageArray = subCategoryImagesArray.subCategoriesImagesArray

        
    }

}

