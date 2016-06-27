//
//  ViewControllerProtocol.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 26..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import UIKit
import AudioToolbox

protocol ViewControllerProtocol: class {
    
}

extension ViewControllerProtocol {
    
    var frame: CGRect {
        return (self as? UIViewController)?.view.frame ?? CGRectZero
    }
    
    func showAlertMessage(title: String, message: String) {
//        if let viewController = self as? UIViewController {
//            Alert.show(viewController, title: title, message: message, okButtonTitle: "확인", okButtonStyle: .Default, okButtonDelegate: nil, cancelButtonTitle: nil, cancelButtonDelegate: nil)
//        }
    }
    
    func enableHideKeyboardByTouch(enable: Bool) {
        (self as? UIViewController)?.enableHideKeyboardByTouch(enable)
    }
    
    func hideKeyboard() {
        (self as? UIViewController)?.hideKeyboard()
    }
    
    func notify(name: String, sender: AnyObject? = nil, userInfo: [NSObject : AnyObject]? = nil) {
//        SwiftEventBus.post(name, sender: sender, userInfo: userInfo)
    }
    
    func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    
}
