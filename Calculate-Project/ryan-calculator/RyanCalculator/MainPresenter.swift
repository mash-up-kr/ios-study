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
    
    func onClickClear() {
        print("Clear")
    }
    
    func onClickDot() {
        print(".")
    }
    
    func onClick0() {
        print("0")
    }
    
    func onClick1() {
        print("1")
    }
    
    func onClick2() {
        print("2")
    }
    
    func onClick3() {
        print("3")
    }
    
    func onClick4() {
        print("4")
    }
    
    func onClick5() {
        print("5")
    }
    
    func onClick6() {
        print("6")
    }
    
    func onClick7() {
        print("7")
    }
    
    func onClick8() {
        print("8")
    }
    
    func onClick9() {
        print("9")
    }
    
    func onClickPlus() {
        print("+")
    }
    
    func onClickMinus() {
        print("-")
    }
    
    func onClickMultiple() {
        print("X")
    }
    
    func onClickDivide() {
        print("/")
    }
    
    func onClickResult() {
        print("Result")
    }
    
}

extension MainPresenter: MainPresenterProtocolForInteractor {
    
    // MARK: Interactor -> Presenter
    
}
