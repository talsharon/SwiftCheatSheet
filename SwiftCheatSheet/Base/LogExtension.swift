//
//  StringExtension.swift
//  mercury
//
//  Created by Tal Sharon on 11/02/2017.
//  Copyright © 2017 Tal Sharon. All rights reserved.
//

import Foundation
import UIKit

let MinDebugLogLevel = String.LogLevel(rawValue: 1)

public extension String {
  
  enum LogLevel: Int {
    case low = 0
    case output
    case debug
    case error
  }
  
  func log(_ function: String = #function,
           file: String = #file,
           line: Int = #line,
           withLogLevel level: LogLevel = .debug) {
    if let minDebugLogLevel = MinDebugLogLevel {
      if level.rawValue < minDebugLogLevel.rawValue {
        return
      }
    }
    
    let componenets = file.components(separatedBy: "/");
    let fileName = componenets.last ?? ""
    let now = Date()
    
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
    let dateString = formatter.string(from: now)
    
    var prefix = ""
    
    switch level {
    case .low:
      prefix = "⬇"
        
    case .output:
      prefix = "✏️"
        
    case .debug:
      prefix = "📉"
        
    case .error:
      prefix = "❌"
    }
    
    #if DEBUG
        
      print("\(dateString) \(prefix) [DEBUG] : \(fileName) : \(function) : \(line):\n\"\(self)\"\n")
        
    #else
        
      if level == .error {
        print("[] \"\(self)\"")
      }
        
    #endif
  }
  
  func error(_ function: String = #function, file: String = #file, line: Int = #line) {
    log(function, file: file, line: line, withLogLevel: .error)
  }
}
