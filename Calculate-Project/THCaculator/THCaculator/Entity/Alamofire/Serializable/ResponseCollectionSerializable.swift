//
//  ResponseCollectionSerializable.swift
//  THCaculator
//
//  Created by 박태현 on 2016. 7. 1..
//  Copyright © 2016년 mashup. All rights reserved.
//

import Foundation
import Alamofire

public protocol ResponseCollectionSerializable {
  static func collection(response response: NSHTTPURLResponse, representation: AnyObject) -> [Self]
}

extension Alamofire.Request {
  public func responseCollection<T: ResponseCollectionSerializable>(completionHandler: Response<[T], NSError> -> Void) -> Self {
    let responseSerializer = ResponseSerializer<[T], NSError> { request, response, data, error in
      guard error == nil else { return .Failure(error!) }
      
      let JSONSerializer = Request.JSONResponseSerializer(options: .AllowFragments)
      let result = JSONSerializer.serializeResponse(request, response, data, error)
      
      switch result {
      case .Success(let value):
        if let response = response {
          return .Success(T.collection(response: response, representation: value))
        } else {
          let failureReason = "Response collection could not be serialized due to nil response"
          let error = Error.errorWithCode(.JSONSerializationFailed, failureReason: failureReason)
          return .Failure(error)
        }
      case .Failure(let error):
        return .Failure(error)
      }
    }
    
    return response(responseSerializer: responseSerializer, completionHandler: completionHandler)
  }
}
