//
//  CALayer+RyanCal.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

extension CALayer {
    func appendShadow(color: UIColor, radius: CGFloat, opacity: Float, yOffset: CGFloat) {
        shadowColor = color.CGColor
        shadowRadius = radius
        shadowOpacity = opacity
        shadowOffset = CGSize(width: 0, height: yOffset)
        masksToBounds = false
    }
    
    func eraseShadow() {
        shadowRadius = 0.0
        shadowColor = UIColor.clearColor().CGColor
    }
}
