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
        
        profilePic.layer.borderWidth = 5.0
        profilePic.layer.borderColor = Constants.color5.CGColor
        profilePic.layer.masksToBounds = true
        
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    override func viewDidLayoutSubviews() {
        profilePic.layer.cornerRadius = profilePic.frame.size.width/2
    }
    
}