//
//  ViewController.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewControllerProtocol {
    
    // MARK: Child Component
    var presenter: MainPresenterProtocol!
    
    // MARK: Properties
    
    // MARK: Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MainRouter.injectDependencies(self)
    }

    // MARK: Override Methods
    
    // MARK: View Event Methods

}

extension MainViewController: MainViewControllerProtocolForPresenter {
    
    // MARK: Presenter -> ViewController : View Setter
    
    // MARK: Presenter -> ViewController : View Getter
    
    // MARK: Presenter -> ViewController : Navigation
    
}
