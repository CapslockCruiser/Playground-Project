//
//  BaseViewController.swift
//  Playground Project
//
//  Created by William on 7/16/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = Constants.color5
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red:0.80, green:0.61, blue:0.95, alpha:1.0), NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!]
        self.navigationController?.navigationBarHidden = true
        
        setupMenuBar()
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setupMenuBar(){
        let viewsDict: [String: UIView] = ["menuBar": menuBar];
        view.addSubview(menuBar)
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[menuBar]|", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[menuBar(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
