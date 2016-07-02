//
//  PresentCurrencyItem.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 29..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation

struct PresentCurrencyItem {
  var currencyCode: String?
  var currencyName: String?
  var countryName: String?
  var imageName: String?
  var currency: Double = 1000
  
  var countryNameWithCurrenyName: String {
    if let currencyName = currencyName, countryName = countryName {
      return countryName + " " + currencyName
    } else {
      return ""
    }
  }
  
  init(jsonDict:[String:AnyObject]) {
    if let currencyCode = jsonDict["currencyCode"] as? String { self.currencyCode = currencyCode }
    if let currencyName =  jsonDict["currencyName"] as? String { self.currencyName = currencyName }
    if let countryName =  jsonDict["countryName"] as? String { self.countryName = countryName }
    if let imageName =  jsonDict["imageName"] as? String { self.imageName = imageName }
  }
  
  init(item: PresentCurrencyItem) {
    currencyCode = item.currencyCode
    currencyName = item.currencyName
    countryName = item.countryName
    imageName = item.imageName
    currency = item.currency
  }
}