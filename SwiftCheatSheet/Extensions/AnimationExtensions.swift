//
//  AnimationExtensions.swift
//  mercury
//
//  Created by Tal Sharon on 03/10/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import UIKit

enum Animation {
    case pulse
    
    var animationKey: String {
        get {
            switch self {
            case .pulse:
                return "pulse"
            }
        }
    }
    
    var animation: CABasicAnimation {
        switch self {
        case .pulse:
            return pulseAnimation
        }
        
    }
    
    private var pulseAnimation: CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.repeatCount = .infinity
        animation.fromValue = 1.0
        animation.toValue = 0.5
        animation.autoreverses = true
        return animation
    }
}

extension UIView {
    
    func addAnimation(_ animationType: Animation, cycleDuration: TimeInterval) {
        layer.add(animationType.animation, forKey: animationType.animationKey)
    }
    
    func removeAnimation(_ type: Animation) {
        layer.removeAnimation(forKey: type.animationKey)
    }
}
