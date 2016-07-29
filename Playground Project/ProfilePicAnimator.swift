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
        let container = transitionContext.containerView()
        let fromView = transitionContext.viewForKey(UITransitionContextFromViewKey)!
        let toView = transitionContext.viewForKey(UITransitionContextToViewKey)!
        
        let offScreenRight = CGAffineTransformMakeTranslation(container!.frame.width, 0)
        let offScreenLeft = CGAffineTransformMakeTranslation(-container!.frame.width, 0)
        
        toView.transform = offScreenRight
        
        container!.addSubview(toView)
        container!.addSubview(fromView)
        
        let duration = self.transitionDuration(transitionContext)
        
        UIView.animateWithDuration(duration, delay: 0.0, options: UIViewAnimationOptions.AllowAnimatedContent, animations:  {
            
            fromView.transform = offScreenLeft
            toView.transform = CGAffineTransformIdentity
            
            }, completion: { finished in
                
                transitionContext.completeTransition(true)
                
        })
    }
    
    func animationEnded(transitionCompleted: Bool) {
        
    }
}