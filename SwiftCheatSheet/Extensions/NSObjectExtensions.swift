//
//  NSObjectExtensions.swift
//  mercury
//
//  Created by Tal Sharon on 22/09/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import Foundation

extension NSObject {
    
  public static var id: String {
    get {
      return String(describing: self)
    }
  }
}
