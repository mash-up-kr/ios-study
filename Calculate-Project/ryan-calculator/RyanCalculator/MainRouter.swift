//
//  MainRouter.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

class MainRouter: MainRouterProtocol {
    
    static func injectDependencies(viewController: UIViewController) {
        if let _ = (viewController as? MainViewController)?.presenter {
            return
        }
        
        let router = MainRouter()
        let viewController = viewController as! MainViewController
        let presenter = MainPresenter()
        let interactor = MainInteractor()
        
        viewController.presenter = presenter
        
        presenter.viewController = viewController
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
    }
    
}
