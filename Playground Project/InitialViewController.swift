//
//  MainViewController.swift
//  Playground Project
//
//  Created by William on 7/16/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class InitialViewController: BaseViewController{
    
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.cornerRadius = profilePic.layer.frame.size.width/2
        profilePic.layer.borderWidth = 2.0
        profilePic.layer.borderColor = UIColor(red:0.80, green:0.61, blue:0.95, alpha:1.0).CGColor
        profilePic.layer.masksToBounds = true
        
    }
    
}