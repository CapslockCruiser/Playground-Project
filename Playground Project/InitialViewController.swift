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

class InitialViewController: BaseViewController, UIViewControllerTransitioningDelegate{
    
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.cornerRadius = profilePic.layer.frame.size.width/2
        profilePic.layer.borderWidth = 4.0
        profilePic.layer.borderColor = UIColor(red:0.62, green:0.48, blue:0.61, alpha:1.0).CGColor
        profilePic.layer.masksToBounds = true
        
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
}