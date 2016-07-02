//
//  PresentCurrencyLocalDataManager.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 28..
//  Copyright © 2016년 mashup. All rights reserved.
//

import UIKit
import Alamofire

class PresentCurrencyLocalDataManager: PresentCurrencyLocalDataManagerInputProtocol {
  
  var presentCurrencyData = [PresentCurrencyItem]()
  var currency: Currency? = nil
  
  init() {}
  
  func fetchLocalData(completion: (error: NSError) -> ()) {
    let path = NSBundle.mainBundle().pathForResource("CountryInformation", ofType: "plist")
    let countryInformations = NSArray(contentsOfFile: path!)
    
    if let countryInformations = countryInformations {
      countryInformations.forEach { element in
        self.presentCurrencyData.append(PresentCurrencyItem(jsonDict: element as! [String:AnyObject]))
      }
    }
    fetchLocalDataWithAPI()
  }
  
  func fetchLocalDataWithAPI() {
    let base = getBase()
    let symbols = getSymbols()
    
    Alamofire
      .request(Router.GetCurrency(base: base, symbols: symbols))
      .responseObject { (response: Response<Currency, NSError>) in
        self.currency = response.result.value!
        self.migration()
      }
  }
  
  func migration() {
    presentCurrencyData = presentCurrencyData.map { e in
      var newItem = PresentCurrencyItem(item: e)
      newItem.currency = (self.currency?.rates.ratesDictionary[newItem.currencyCode ?? ""] ?? newItem.currency) * presentCurrencyData[0].currency
      return newItem
    }
  }
  
  func getBase() -> String {
    return presentCurrencyData[0].currencyCode!
  }
  
  func getSymbols() -> String {
    var symbols = ""
    presentCurrencyData.forEach {
      symbols.appendContentsOf($0.currencyCode!)
      symbols.appendContentsOf(",")
    }
    symbols.removeAtIndex(symbols.endIndex.predecessor())
    return symbols
  }
  
  func numberOfItems(inSection section: Int) -> Int {
    return presentCurrencyData.count
  }
  
  func numberOfSection() -> Int {
    return 1
  }
  
  func presentCurrencyItemAtIndexPath(index:NSIndexPath) -> PresentCurrencyItem? {
    return presentCurrencyData[index.row]
  }
  
  func modifyCurrencyAtIndexPath(index: Int, value: Double, completion: (error: NSError) -> ()) {
    presentCurrencyData[0].currency = value
    fetchLocalDataWithAPI()
  }
}