//
//  PresentCurrencyRouter.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

class PresentCurrencyRouter: PresentCurrencyRouterProtocol {
  
  class func presentCurrencyModule(fromView view: UINavigationController) {
    let view: PresentCurrencyViewProtocol = PresentCurrencyViewController()
    let presenter: protocol<PresentCurrencyPresenterProtocol, PresentCurrencyInteractorOutputProtocol> = PresentCurrencyPresenter()
    let interactor: PresentCurrencyInteractorInputProtocol = PresentCurrencyInteractor()
    let localDataManager: PresentCurrencyLocalDataManagerInputProtocol = PresentCurrencyLocalDataManager()
    let router: PresentCurrencyRouterProtocol = PresentCurrencyRouter()
    
    view.presenter = presenter
    presenter.view = view
    presenter.router = router
    presenter.interactor = interactor
    interactor.LocalDataManager = localDataManager
  }
  
  func modalToDetailCurrency(selectedCountryItem country: PresentCurrencyItem, view: UINavigationController, completion: ((completed: Bool) -> ())?) {
    
  }
  
  func pushToAddCountry(selectedCountryItem country: PresentCurrencyItem, view: UINavigationController, completion: ((completed: Bool) -> ())?) {
    
  }
}