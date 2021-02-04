//
//  ConstConvertable.swift
//  Const
//
//  Created by DaEun Kim on 2021/02/04.
//

import Foundation


protocol ConstConvertable {
  associatedtype Const: Constable
}

extension ConstConvertable {
  func string(_ value: Const) -> String {
    return value.object as! String
  }

  func int(_ value: Const) -> Int {
    return value.object as! Int
  }
}
