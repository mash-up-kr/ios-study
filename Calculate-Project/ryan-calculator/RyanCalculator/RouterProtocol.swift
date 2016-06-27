//
//  RouterProtocol.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 26..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import UIKit

protocol RouterProtocol: class {
    
    static func injectDependencies(viewController: UIViewController)
    
}

extension RouterProtocol {
    
    static func instantiateViewController<VC: UIViewController where VC: ViewControllerProtocol>(viewControllerType: VC.Type) -> VC {
        let viewController = Storyboard.Main.instance.instantiate(viewControllerType)
        injectDependencies(viewController)
        return viewController
    }
    
    func dismissViewController(viewController: ViewControllerProtocol?, animated: Bool = true, completion: (() -> Void)? = nil) {
        (viewController as? UIViewController)?.dismissViewControllerAnimated(animated, completion: completion)
    }
    
    func popViewController(viewController: ViewControllerProtocol?, animated: Bool = true) {
        (viewController as? UIViewController)?.navigationController?.popViewControllerAnimated(animated)
    }
    
    func openURL(url: String) {
        if let url = NSURL(string: url) {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
}
