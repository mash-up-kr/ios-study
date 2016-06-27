//
//  NSObject+Boracay.swift
//  Boracay
//
//  Created by Ryan Yoo on 2016. 6. 25..
//  Copyright © 2016년 MashUp. All rights reserved.
//

import Foundation

extension NSObject {
    
    class var className: String {
        return String(self)
    }
    
    var className: String {
        return self.dynamicType.className
    }
    
}
