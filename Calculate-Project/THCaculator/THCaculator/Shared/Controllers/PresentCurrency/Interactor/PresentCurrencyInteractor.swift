//
//  PresentCurrencyInteractor.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit

class PresentCurrencyInteractor: PresentCurrencyInteractorInputProtocol {
  
  weak var presenter: PresentCurrencyPresenterProtocol?
  var LocalDataManager: PresentCurrencyLocalDataManagerInputProtocol? = PresentCurrencyLocalDataManager()
  
  func fetchLocalData(completion: (error: NSError?) -> ()) {
    if let LocalDataManager = LocalDataManager {
      LocalDataManager.fetchLocalData(completion)
    }
  }
  
  func numberOfItems(inSection section: Int) -> Int {
    if let LocalDataManager = LocalDataManager {
      return LocalDataManager.numberOfItems(inSection: section)
    }
    return 0
  }
  
  func numberOfSection() -> Int {
    if let LocalDataManager = LocalDataManager {
      return LocalDataManager.numberOfSection()
    }
    return 0
  }
  
  func presentCurrencyItemAtIndexPath(index: NSIndexPath) -> PresentCurrencyItem? {
    if let LocalDataManager = LocalDataManager {
      return LocalDataManager.presentCurrencyItemAtIndexPath(index)
    }
    return nil
  }
  
  func modifyCurrencyAtIndexPath(index: Int, value: Double, completion: (error: NSError) -> ()) {
    if let LocalDataManager = LocalDataManager {
      LocalDataManager.modifyCurrencyAtIndexPath(index, value: value, completion: completion)
    }
  }
}