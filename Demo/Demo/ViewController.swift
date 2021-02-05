//
//  ViewController.swift
//  Demo
//
//  Created by DaEun Kim on 2021/01/30.
//

import UIKit

extension Int {
  var cgf: CGFloat {
    return CGFloat(self)
  }
}

class ViewController: UIViewController, ConstConvertable {
  enum Const: Constable {
    case topMargin
    case bottomMargin
    case leadingMargin
    case trailingMargin
    case backgroundColor

    var object: Any {
      switch self {
      case .topMargin: return 10.cgf
      case .bottomMargin: return -20.cgf
      case .leadingMargin: return 15.cgf
      case .trailingMargin: return -20.cgf
      case .backgroundColor: return UIColor.black
      }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    let subview = UIView()
    subview.backgroundColor = a(.backgroundColor)
    subview.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(subview)

    let safeArea = view.safeAreaLayoutGuide
    NSLayoutConstraint.activate([
      subview.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: a(.topMargin)),
      subview.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: a(.bottomMargin)),
      subview.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: a(.leadingMargin)),
      subview.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: a(.trailingMargin))
    ])
  }
}

