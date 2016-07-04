//
//  AnimButton.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 29..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

@IBDesignable
class UIAnimButton: UIButton {
    
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
        let animation: (() -> Void) = {
            self.transform = CGAffineTransformMakeScale(2, 2)
        }
        let complete : ((Bool) -> Void) = { finished in
            self.touchDownAnimating = false
            if self.needTouchUpAnimation {
                self.touchUp()
            }
        }
        
        touchDownAnimating = true
        touchUpAnimating = false
        needTouchUpAnimation = false
        UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.8, options: .CurveEaseIn, animations: animation, completion: complete)
    }
    
    func touchUp() {
        if touchDownAnimating {
            needTouchUpAnimation = true
            return
        }
        
        let animation: (() -> Void) = {
            self.transform = CGAffineTransformIdentity
        }
        let complete : ((Bool) -> Void) = { finished in
            self.touchUpAnimating = false
        }
        
        touchUpAnimating = true
        UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.8, options: .CurveEaseIn, animations: animation, completion: complete)
    }
    
}
