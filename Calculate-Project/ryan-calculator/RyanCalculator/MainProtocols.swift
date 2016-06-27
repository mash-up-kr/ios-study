//
//  MainProtocols.swift
//  RyanCalculator
//
//  Created by Ryan Yoo on 2016. 6. 27..
//  Copyright © 2016년 Mash Up. All rights reserved.
//

import Foundation

// MARK: - Router

protocol MainRouterProtocol: class, RouterProtocol {
    
}

// MARK: - ViewController

protocol MainViewControllerProtocol: class, ViewControllerProtocol {
    
    // MARK: Child Component
    var presenter: MainPresenterProtocol! { get set }
    
    // MARK: Properties
    
    // MARK: Views
    
    // MARK: Override Methods
    
    // MARK: View Event Methods
    
}

protocol MainViewControllerProtocolForPresenter: class, ViewControllerProtocol {
    
    // MARK: Presenter -> ViewController : View Setter
    
    // MARK: Presenter -> ViewController : View Getter
    
    // MARK: Presenter -> ViewController : Navigation
    
}

// MARK: - Presenter

protocol MainPresenterProtocol: class, PresenterProtocol {
    
    // MARK: Root Component
    weak var viewController: MainViewControllerProtocolForPresenter? { get set }
    
    // MARK: Child Component
    var router: MainRouterProtocol! { get set }
    var interactor: MainInteractorProtocol! { get set }
    
    // MARK: Properties
    
    // MARK: ViewController -> Presenter : Life Cycle Action
    
    // MARK: ViewController -> Presenter : Event Action
    
    // MARK: ViewController -> Presenter : User Action
    
}

protocol MainPresenterProtocolForInteractor: class, PresenterProtocol {
    
    // MARK: Interactor -> Presenter
    
}

// MARK: - Interactor

protocol MainInteractorProtocol: class, InteractorProtocol {
    
    // MARK: Root Component
    weak var presenter: MainPresenterProtocolForInteractor? { get set }
    
    // MARK: Child Component
    
    // MARK: Properties
    
    // MARK: Presenter -> Interactor
    
}
