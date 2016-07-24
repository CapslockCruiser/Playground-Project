//
//  ProfilePicAnimator.swift
//  Playground Project
//
//  Created by William on 7/19/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import UIKit

class ProfilePicAnimator: NSObject, UIViewControllerAnimatedTransitioning{
    
    var originFrame = CGRect.zero
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let viewToBePresented = transitionContext.viewForKey(UITransitionContextToViewKey)//View controller to be presented
        let originialView = transitionContext.viewForKey(UITransitionContextFromViewKey)//Original view controller
    }
}