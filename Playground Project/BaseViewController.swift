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
        self.navigationController?.navigationBar.tintColor = UIColor(red:0.22, green:0.29, blue:0.40, alpha:1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red:0.80, green:0.61, blue:0.95, alpha:1.0), NSFontAttributeName: UIFont(name: "HelveticaNeue-Light", size: 19)!]
    }
}
