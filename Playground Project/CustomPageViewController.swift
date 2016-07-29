//
//  CustomPageViewController.swift
//  Playground Project
//
//  Created by William on 7/24/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import UIKit

class CustomPageViewController: UIPageViewController{
    var pages: [UIViewController] = []
    
    init(){
        super.init(transitionStyle: .Scroll, navigationOrientation: .Horizontal, options: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialVC = InitialViewController(nibName: "InitialViewController", bundle: nil)
        initialVC.view.tag = 0
        let appsVC = AppsViewController(nibName: "AppsViewController", bundle: nil)
        appsVC.view.tag = 1
        let paintingVC = PaintingTableViewController(nibName: "PaintingTableViewController", bundle: nil)
        paintingVC.view.tag = 2
        let resumeVC = ResumeViewController(nibName: "ResumeViewController", bundle: nil)
        resumeVC.view.tag = 3
        
        pages.append(initialVC)
        pages.append(appsVC)
        pages.append(paintingVC)
        pages.append(resumeVC)
        
        setViewControllers([pages[0]], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
//    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
//        return pages.count
//    }
//    
//    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
//        return 0
//    }
}