//
//  MenuBar.swift
//  Playground Project
//
//  Created by William on 7/17/16.
//  Copyright © 2016 choiw. All rights reserved.
//
//  Many thanks to http://letsbuildthatapp.com/ for this

import UIKit


protocol MenuBarDelegate: class{
    func didSelectMenuItem(index: Int)
}

class MenuBar: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = Constants.color3.colorWithAlphaComponent(0.75)
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    let cellId = "cellId"
    let imageNames = ["home_icon", "computer_icon", "painting_icon", "resume_icon"]
    weak var delegate: MenuBarDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.registerClass(MenuCell.self, forCellWithReuseIdentifier: cellId)
        let viewsDict: [String: UIView] = ["cV": collectionView]
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[cV]|", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[cV]|", options: NSLayoutFormatOptions(), metrics: nil, views: viewsDict))
        
        let selectedIndexPath = NSIndexPath(forItem: 0, inSection: 0)
        collectionView.selectItemAtIndexPath(selectedIndexPath, animated: false, scrollPosition: .None)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath) as! MenuCell
        cell.setupViews()
        cell.iconImageView.image = UIImage(named: imageNames[indexPath.item])?.imageWithRenderingMode(.AlwaysTemplate)
        cell.tintColor = UIColor.whiteColor()
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(frame.width / 4, frame.height)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        delegate?.didSelectMenuItem(indexPath.row)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
