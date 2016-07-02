//
//  EntityProtocols.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 6. 30..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation

protocol CurrencyProtocol {
  var currencyCode: String { get }
  var currencyName: String { get }
  var countryName: String { get }
  var imageName: String { get }
}