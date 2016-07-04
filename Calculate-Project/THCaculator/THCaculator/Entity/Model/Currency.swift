//
//  Currency.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 30..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation

/*
 {
  "base": "EUR",
  "date": "2016-06-30",
  "rates": {
    "GBP": 0.8265,
    "USD": 1.1102
  }
 }
*/

final class Currency: ResponseObjectSerializable {
  
  let base: String
  let date: String
  let rates: Rate
  
  init?(response: NSHTTPURLResponse, representation: AnyObject) {
    self.base = representation.valueForKeyPath("base") as! String
    self.date = representation.valueForKeyPath("date") as! String
    self.rates = Rate(response:response, representation: representation.valueForKeyPath("rates")!)!
  }
}