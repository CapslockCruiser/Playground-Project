//
//  BaseViewController.swift
//  Playground Project
//
//  Created by William on 7/16/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate, MenuBarDelegate{
    
    let pageViewController = CustomPageViewController() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = Constants.color5
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red:0.80, green:0.61, blue:0.95, alpha:1.0), NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!]
        self.navigationController?.navigationBarHidden = true
        
        setupPageVC()
        setupMenuBar()
        
    }
    
    private func setupPageVC(){
        
        pageViewController.view.frame = self.view.frame
        pageViewController.delegate = self
        pageViewController.dataSource = self
        self.view.addSubview(pageViewController.view)
    }
    
    let menuBar = MenuBar()
    
    private func setupMenuBar(){
        let viewsDict: [String: UIView] = ["menuBar": menuBar];
        view.addSubview(menuBar)
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[menuBar]|", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[menuBar(40)]", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        menuBar.delegate = self
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = (pageViewController as! CustomPageViewController).pages.indexOf(viewController)!
        let previousIndex = abs((currentIndex - 1) % (pageViewController as! CustomPageViewController).pages.count)
        return (pageViewController as! CustomPageViewController).pages[previousIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let currentIndex = (pageViewController as! CustomPageViewController).pages.indexOf(viewController)!
        let nextIndex = abs((currentIndex + 1) % (pageViewController as! CustomPageViewController).pages.count)
        return (pageViewController as! CustomPageViewController).pages[nextIndex]
    }
    
    func pageViewController(pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let index = pageViewController.viewControllers?.first?.view.tag{
            menuBar.collectionView.selectItemAtIndexPath(NSIndexPath(forItem: index, inSection: 0), animated: true, scrollPosition: .None)
        }
    }
    
    func didSelectMenuItem(index: Int) {
        pageViewController.setViewControllers([pageViewController.pages[index]], direction: .Forward, animated: true, completion: nil)
    }
}
