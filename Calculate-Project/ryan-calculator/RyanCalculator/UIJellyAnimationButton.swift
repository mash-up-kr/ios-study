//
//  UIJellyAnimationButton.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 29..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

@IBDesignable
class UIJellyAnimationButton: UIGlowRoundedButton {
    
    private var touchDownAnimating: Bool = false
    private var needTouchDownAnimation: Bool = false
    
    private var touchUpAnimating: Bool = false
    private var needTouchUpAnimation: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    private func setup() {
        addTarget(self, action: #selector(UIAnimButton.touchDown), forControlEvents: .TouchDown)
        addTarget(self, action: #selector(UIAnimButton.touchUp), forControlEvents: .TouchUpInside)
        addTarget(self, action: #selector(UIAnimButton.touchUp), forControlEvents: .TouchUpOutside)
    }
    
    deinit {
        removeTarget(self, action: #selector(UIAnimButton.touchDown), forControlEvents: .TouchDown)
        removeTarget(self, action: #selector(UIAnimButton.touchUp), forControlEvents: .TouchUpInside)
        removeTarget(self, action: #selector(UIAnimButton.touchUp), forControlEvents: .TouchUpOutside)
    }
    
    func touchDown() {
        print("touchDown")
        
        let animation: (() -> Void) = {
//            self.transform = CGAffineTransformTranslate(CGAffineTransformMakeScale(1.1, 0.95), 0, 0)
            self.transform = CGAffineTransformMakeScale(1.1, 0.95)
        }
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: .CurveEaseIn, animations: animation, completion: nil)
    }
    
    func touchUp() {
        print("touchUp")
        
        let animation: (() -> Void) = {
            self.transform = CGAffineTransformIdentity
        }
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: .CurveEaseIn, animations: animation, completion: nil)
    }
    
}
