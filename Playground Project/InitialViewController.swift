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

class InitialViewController: UIViewController, UIViewControllerTransitioningDelegate{
    @IBOutlet weak var paragraphTF: UILabel!
    @IBOutlet weak var githubImageView: UIImageView!
    @IBOutlet weak var profilePic: UIImageView!
    
    var mask = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let linkTapGesRec = UITapGestureRecognizer(target: self, action:#selector(InitialViewController.goToGitHub))
        githubImageView.userInteractionEnabled = true
        githubImageView.addGestureRecognizer(linkTapGesRec)
        
        
        profilePic.layer.borderWidth = 5.0
        profilePic.layer.borderColor = Constants.color3.CGColor
        profilePic.layer.masksToBounds = true
        profilePic.userInteractionEnabled = true
        let profileTapGestRec = UITapGestureRecognizer(target: self, action:#selector(InitialViewController.showProfilePic))
        profilePic.addGestureRecognizer(profileTapGestRec)
        
    }
    
    func showProfilePic(){
        
        let profilePicVC = ProfilePicViewController(nibName: "ProfilePicViewController", bundle: nil)
         
        self.navigationController?.pushViewController(profilePicVC, animated: true)
        //var transitioner = ProfilePicAnimator()
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    override func viewDidLayoutSubviews() {
        profilePic.layer.cornerRadius = profilePic.frame.size.width/2
        paragraphTF.layer.cornerRadius = 16
        paragraphTF.clipsToBounds = true
    }
    
    func goToGitHub(){
        UIApplication.sharedApplication().openURL(NSURL.init(string: "https://github.com/CapslockCruiser")!)
    }
}