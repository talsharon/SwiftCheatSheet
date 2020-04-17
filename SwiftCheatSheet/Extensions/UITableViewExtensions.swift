//
//  UITableViewExtensions.swift
//  mercury
//
//  Created by Tal Sharon on 30/09/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerNib<T: UIView>(for: T.Type) {
        let nib = UINib(nibName: T.id, bundle: nil)
        register(nib, forCellReuseIdentifier: T.id)
    }
    
    func hideEmptyCellsSeparator() {
        tableFooterView = UIView()
    }
}

extension UICollectionView {
    
    func registerNib<T: UIView>(for: T.Type) {
        let nib = UINib(nibName: T.id, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.id)
    }
}
