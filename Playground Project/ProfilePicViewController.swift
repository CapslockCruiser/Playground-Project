//
//  ProfilePicViewController.swift
//  Playground Project
//
//  Created by William on 7/20/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import UIKit

class ProfilePicViewController: BaseViewController{
    
    @IBAction func backButton(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animateWithDuration(0.5, animations: {
            
        })
    }
    
}