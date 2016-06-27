//
//  UIViewController+Boracay.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func enableHideKeyboardByTouch(enable: Bool) {
        if enable {
            let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.hideKeyboard(_:)))
            tapRecognizer.cancelsTouchesInView = false
            view.addGestureRecognizer(tapRecognizer)
        } else {
            view.removeGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(UIViewController.hideKeyboard(_:))))
        }
    }
    
    func hideKeyboard(recognizer: UITapGestureRecognizer) {
        hideKeyboard()
    }
    
    func hideKeyboard() {
        view.endEditing(true)
    }
    
}
