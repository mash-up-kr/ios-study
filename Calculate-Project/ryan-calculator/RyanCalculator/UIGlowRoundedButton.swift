//
//  UIGlowRoundedButton.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

@IBDesignable
class UIGlowRoundedButton: UIButton {
    
    @IBInspectable var glowBackgroundColor: UIColor = UIColor.whiteColor() {
        didSet { setNeedsDisplay() }
    }
    @IBInspectable var glowColor: UIColor = UIColor.blackColor() {
        didSet { setNeedsDisplay() }
    }
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet { setNeedsDisplay() }
    }
    
    private let glowRoundedLayer = CAShapeLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        layer.insertSublayer(glowRoundedLayer, atIndex: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        glowRoundedLayer.frame = CGRect(origin: CGPointZero, size: frame.size)
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        glowRoundedLayer.frame = CGRect(origin: CGPointZero, size: frame.size)
        glowRoundedLayer.backgroundColor = glowBackgroundColor.CGColor
        glowRoundedLayer.cornerRadius = cornerRadius
        glowRoundedLayer.masksToBounds = true
        glowRoundedLayer.appendShadow(glowColor, radius: 10, opacity: 0.5, yOffset: 0)
    }
    
}
