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
    
    @IBAction func onClickClear(sender: AnyObject) {
        presenter.onClickClear()
    }
    
    @IBAction func onClickDot(sender: AnyObject) {
        presenter.onClickDot()
    }
    
    @IBAction func onClick0(sender: AnyObject) {
        presenter.onClick0()
    }
    
    @IBAction func onClick1(sender: AnyObject) {
        presenter.onClick1()
    }
    
    @IBAction func onClick2(sender: AnyObject) {
        presenter.onClick2()
    }
    
    @IBAction func onClick3(sender: AnyObject) {
        presenter.onClick3()
    }
    
    @IBAction func onClick4(sender: AnyObject) {
        presenter.onClick4()
    }
    
    @IBAction func onClick5(sender: AnyObject) {
        presenter.onClick5()
    }
    
    @IBAction func onClick6(sender: AnyObject) {
        presenter.onClick6()
    }
    
    @IBAction func onClick7(sender: AnyObject) {
        presenter.onClick7()
    }
    
    @IBAction func onClick8(sender: AnyObject) {
        presenter.onClick8()
    }
    
    @IBAction func onClick9(sender: AnyObject) {
        presenter.onClick9()
    }
    
    @IBAction func onClickPlus(sender: AnyObject) {
        presenter.onClickPlus()
    }
    
    @IBAction func onClickMinus(sender: AnyObject) {
        presenter.onClickMinus()
    }
    
    @IBAction func onClickMultiple(sender: AnyObject) {
        presenter.onClickMultiple()
    }
    
    @IBAction func onClickDivide(sender: AnyObject) {
        presenter.onClickDivide()
    }
    
    @IBAction func onClickResult(sender: AnyObject) {
    }
    
}

extension MainViewController: MainViewControllerProtocolForPresenter {
    
    // MARK: Presenter -> ViewController : View Setter
    
    // MARK: Presenter -> ViewController : View Getter
    
    // MARK: Presenter -> ViewController : Navigation
    
}
