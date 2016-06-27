//
//  UIStoryboard+Boracay.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 25..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import UIKit
import SwiftString

// MARK: - Storyboard

enum Storyboard: String {
    
    case Main = "Main"
    
    var instance: UIStoryboard {
        return UIStoryboard(name: rawValue, bundle: nil)
    }
    
}

// MARK: - UIStoryboard Extension

extension UIStoryboard {
    
    func instantiate<VC: UIViewController>(viewController: VC.Type) -> VC {
        return instantiateViewControllerWithIdentifier(viewController.className) as! VC
    }
    
    func instantiate<VC: UIViewController>() -> VC {
        return instantiateViewControllerWithIdentifier(VC.className) as! VC
    }
    
}

// MARK: - StoryBoardHelper

protocol StoryBoardHelper {
    
}

extension StoryBoardHelper where Self: UIViewController {
    
    static func instantiate(storyboard: Storyboard = .Main) -> Self {
        return storyboard.instance.instantiate()
    }
    
}
