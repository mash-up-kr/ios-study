//
//  PresentCurrencyPresenter.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

class PresentCurrencyPresenter: PresentCurrencyPresenterProtocol, PresentCurrencyInteractorOutputProtocol {
  
  var view: PresentCurrencyViewProtocol?
  var interactor: PresentCurrencyInteractorInputProtocol? = PresentCurrencyInteractor()
  var router: PresentCurrencyRouterProtocol? = PresentCurrencyRouter()
  
  init() {}
  
  func fetchLocalData(completion: (error: NSError?) -> ()) {
    if let interactor = interactor {
      interactor.fetchLocalData(completion)
    }
  }
  
  func numberOfItems(inSection section: Int) -> Int {
    if let interactor = interactor {
      return interactor.numberOfItems(inSection: section)
    }
    return 0
  }
  
  func numberOfSection() -> Int {
    if let interactor = interactor {
      interactor.numberOfSection()
    }
    return 1
  }
  
  func setContentToView(view: PresentCurrencyItemViewProtocol, index: NSIndexPath) {
    let item: PresentCurrencyItem = interactor!.presentCurrencyItemAtIndexPath(index)!
    view.set(currencyTextField: "\(item.currency)")
    view.set(imageName: item.imageName!)
    view.set(currencyCode: item.currencyCode!)
    view.set(currencyName: item.countryNameWithCurrenyName)
    
    (index.row >= 1) ? view.setTextFieldFixed() : view.setTextFiledEditable()
  }
  
  func presenctCurrencyItemAtIndexPath(index: NSIndexPath) -> PresentCurrencyItem? {
    if let interactor = interactor {
      interactor.presentCurrencyItemAtIndexPath(index)
    }
    return nil
  }
  
  func userDidSelectGlassesItem(atIndexPath indexPath: NSIndexPath, controller: UINavigationController, cellView: UITableViewCell) {
    if let interactor = interactor {
      if let item = interactor.presentCurrencyItemAtIndexPath(indexPath) {
        if let router = router {
          router.pushToAddCountry(selectedCountryItem: item, view: controller, completion: nil)
        }
      }
    }
  }
  
  func userDidSelectDetailItem(atIndexPath indexPath: NSIndexPath, controller: UINavigationController, cellView: UITableViewCell) {
    if let interactor = interactor {
      if let item = interactor.presentCurrencyItemAtIndexPath(indexPath) {
        if let router = router {
          router.modalToDetailCurrency(selectedCountryItem: item, view: controller, completion: nil)
        }
      }
    }
  }
  
  func setCurrencyByPressedKeyboard(index: Int, tag: Int, completion: (error: NSError?) -> ()) {
    interactor?.LocalDataManager?.modifyCurrencyAtIndexPath(index, value: Double(tag), completion: completion)
  }
}