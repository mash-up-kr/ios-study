//
//  APIRouter.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 7. 1..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
  static let baseURL = NSURL(string: "http://api.fixer.io")!
  //base=USD
  
  case GetCurrency(base: String, symbols: String)
  
  var URL: NSURL {
    return Router.baseURL.URLByAppendingPathComponent(route.path)
  }
  
  var route: (path: String, parameters: [String: AnyObject]?) {
    switch self {
    case .GetCurrency(let base, let symbols):
      return ("/latest", ["base": "\(base)", "symbols": "\(symbols)"])
    }
  }
  
  var URLRequest: NSMutableURLRequest {
    return Alamofire
      .ParameterEncoding
      .URL
      .encode(NSURLRequest(URL: URL), parameters: (route.parameters ?? [ : ])).0
  }
}