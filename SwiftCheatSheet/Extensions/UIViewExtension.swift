//
//  UIViewExtension.swift
//  mercury
//
//  Created by Tal Sharon on 11/02/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import UIKit

public extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowOpacity = newValue > 0 ? 1 : 0
            layer.masksToBounds = newValue > 1 ? false : true
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable var shadowColor: UIColor {
        get {
            return UIColor(cgColor: layer.shadowColor ?? UIColor.black.cgColor)
        }
        set {
            layer.shadowColor = newValue.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor(cgColor: layer.borderColor ?? UIColor.black.cgColor)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}

public extension UIView {
    
    var isCircle: Bool {
        get {
            return cornerRadius == bounds.height / 2
        }
        set {
            clipsToBounds = true
            cornerRadius = newValue ? bounds.height / 2 : 0
        }
    }
    
    func setBorder(width: CGFloat, color: UIColor) {
        borderWidth = width
        borderColor = color
    }
}
