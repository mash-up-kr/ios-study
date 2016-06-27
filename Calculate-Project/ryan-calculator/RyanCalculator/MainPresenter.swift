//
//  MainPresenter.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import Foundation

class MainPresenter: MainPresenterProtocol {
    
    // MARK: Root Component
    weak var viewController: MainViewControllerProtocolForPresenter?
    
    // MARK: Child Component
    var router: MainRouterProtocol!
    var interactor: MainInteractorProtocol!
    
    // MARK: Properties
    
    // MARK: ViewController -> Presenter : Life Cycle Action
    
    // MARK: ViewController -> Presenter : Event Action
    
    // MARK: ViewController -> Presenter : User Action
    
}

extension MainPresenter: MainPresenterProtocolForInteractor {
    
    // MARK: Interactor -> Presenter
    
}
