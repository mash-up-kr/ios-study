//
//  PresentCurrencyProtocols.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

protocol PresentCurrencyViewProtocol: class {
  
  var presenter: PresentCurrencyPresenterProtocol? { get set }
  /**
   * Add here your methods for communication PRESENTER -> VIEW
   */
}

protocol PresentCurrencyRouterProtocol: class {
  
  static func presentCurrencyModule(fromView view: UINavigationController)
  /**
   * Add here your methods for communication PRESENTER -> ROUTER
   */
  func modalToDetailCurrency(selectedCountryItem country: PresentCurrencyItem, view: UINavigationController, completion: ((completed: Bool) -> ())?)
  func pushToAddCountry(selectedCountryItem country: PresentCurrencyItem, view: UINavigationController, completion: ((completed: Bool) -> ())?)
}

protocol PresentCurrencyPresenterProtocol: class {
  
  var view: PresentCurrencyViewProtocol? { get set }
  var interactor: PresentCurrencyInteractorInputProtocol? { get set }
  var router: PresentCurrencyRouterProtocol? { get set }
  /**
   * Add here your methods for communication VIEW -> PRESENTER
   */
  func fetchLocalData(completion: (error: NSError?) -> ())
  func numberOfItems(inSection section: Int) -> Int
  func numberOfSection() -> Int
  func setContentToView(view: PresentCurrencyItemViewProtocol, index: NSIndexPath)
  func presenctCurrencyItemAtIndexPath(index: NSIndexPath) -> PresentCurrencyItem?
  func userDidSelectGlassesItem(atIndexPath indexPath: NSIndexPath, controller: UINavigationController, cellView: UITableViewCell)
  func userDidSelectDetailItem(atIndexPath indexPath: NSIndexPath, controller: UINavigationController, cellView: UITableViewCell)
  func setCurrencyByPressedKeyboard(index: Int, tag: Int, completion: (error: NSError?) -> ())
}

protocol PresentCurrencyInteractorOutputProtocol: class {
  /**
   * Add here your methods for communication INTERACTOR -> PRESENTER
   */
}

protocol PresentCurrencyInteractorInputProtocol: class {
  
  var presenter: PresentCurrencyPresenterProtocol? { get set }
  var LocalDataManager: PresentCurrencyLocalDataManagerInputProtocol? { get set }
  /**
   * Add here your methods for communication PRESENTER -> INTERACTOR
   */
  func fetchLocalData(completion: (error: NSError?) -> ())
  func numberOfItems(inSection section: Int) -> Int
  func numberOfSection() -> Int
  func presentCurrencyItemAtIndexPath(index:NSIndexPath) -> PresentCurrencyItem?
}

protocol PresentCurrencyDataManagerInputProtocol: class {
  /**
   * Add here your methods for communication INTERACTOR -> DATAMANAGER
   */
}

protocol PresentCurrencyLocalDataManagerInputProtocol: class {
  /**
   * Add here your methods for communication INTERACTOR -> Local DATAMANAGER
   */
  func fetchLocalData(completion: (error: NSError) -> ())
  func numberOfItems(inSection section: Int) -> Int
  func numberOfSection() -> Int
  func presentCurrencyItemAtIndexPath(index:NSIndexPath) -> PresentCurrencyItem?
  func modifyCurrencyAtIndexPath(index: Int, value: Double, completion: (error: NSError) -> ())
  func fetchLocalDataWithAPI()
}

protocol PresentCurrencyItemViewProtocol: class {
  /**
   * Add here your methods for PresentCurrencyAPIDataManager
   */
  func set(currencyTextField currency: String)
  func set(imageName image: String)
  func set(currencyCode code: String)
  func set(currencyName name: String)
  func setTextFieldFixed()
  func setTextFiledEditable()
}

