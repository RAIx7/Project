//
//  ImageViewController.swift
//  Project
//
//  Created by Sanjay Rai on 29/04/2017.
//  Copyright © 2017 Sanjay Rai. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var subCategoryImageView: UIImageView!
    
    var subCategoryImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.subCategoryImageView.image = subCategoryImage
        

    }



}
