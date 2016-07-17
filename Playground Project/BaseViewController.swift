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
        self.navigationController?.navigationBar.tintColor = UIColor(red:0.05, green:0.07, blue:0.09, alpha:1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red:0.80, green:0.61, blue:0.95, alpha:1.0), NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!]
        
        setupMenuBar()
    }
    
    let menuBar: MenuBar = {
        let mb = MenuBar()
        return mb
    }()
    
    private func setupMenuBar(){
        view.addSubview(menuBar)
        //view.addConstraints([NSLayoutConstraint ])
        
    }
}
