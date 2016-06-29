//
//  UIColor+Boracay.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 25..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: Int, alpha: Double = 1.0) {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
}
