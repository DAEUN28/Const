//
//  ConstConvertable.swift
//  Const
//
//  Created by DaEun Kim on 2021/02/04.
//

protocol ConstConvertable {
  associatedtype Const: Constable
}

extension ConstConvertable {
  func a<T>(_ value: Const) -> T {
    return value.object as! T
  }
}
