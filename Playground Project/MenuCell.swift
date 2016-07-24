//
//  MenuCell.swift
//  Playground Project
//
//  Created by William on 7/17/16.
//  Copyright © 2016 choiw. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell{
    
    let iconImageView: UIImageView = {
        let iV = UIImageView()
        iV.image = UIImage(named: "home_icon")?.imageWithRenderingMode(.AlwaysTemplate)
        iV.tintColor = Constants.color1
        return iV
    }()
    
    override var highlighted: Bool {
        didSet {
            iconImageView.tintColor = highlighted ? UIColor.whiteColor() : Constants.color1
        }
    }
    
    override var selected: Bool {
        didSet {
            iconImageView.tintColor = selected ? UIColor.whiteColor() : Constants.color1
        }
    }
    
    func setupViews() {
        
        addSubview(iconImageView)
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        
        iconImageView.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
        iconImageView.centerYAnchor.constraintEqualToAnchor(self.centerYAnchor).active = true
        //iconImageView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor, constant: 0).active = true
        
        //let viewsDict: [String: UIView] = ["iV": iconImageView]
        //        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[iV(28)]", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        //        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[iV(28)]", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))

//        addConstraint(NSLayoutConstraint(item: iconImageView, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0))
//        addConstraint(NSLayoutConstraint(item: iconImageView, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0))
    }
    
}
