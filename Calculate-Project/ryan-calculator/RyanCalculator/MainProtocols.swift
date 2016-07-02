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
    
    func onClickClear()
    func onClickDot()
    func onClick0()
    func onClick1()
    func onClick2()
    func onClick3()
    func onClick4()
    func onClick5()
    func onClick6()
    func onClick7()
    func onClick8()
    func onClick9()
    func onClickPlus()
    func onClickMinus()
    func onClickMultiple()
    func onClickDivide()
    func onClickResult()

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
