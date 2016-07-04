//
//  Rate.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 7. 1..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation

class Rate: ResponseObjectSerializable {
  var ratesDictionary: [String: Double] = [:]
  
  required init?(response: NSHTTPURLResponse, representation: AnyObject) {
    // map the values to the instance
    self.ratesDictionary["KRW"] = representation.valueForKeyPath("KRW") as? Double
    self.ratesDictionary["USD"] = representation.valueForKeyPath("USD") as? Double
    self.ratesDictionary["GBP"] = representation.valueForKeyPath("GBP") as? Double
    self.ratesDictionary["CNY"] = representation.valueForKeyPath("CNY") as? Double
  }
}