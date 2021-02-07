# Const

💖 Lovely code for const

## Summary

From:

```swift
class ViewController: UIViewController {
	struct Const {
		static let width: CGFloat = 100
		static let height: CGFloat = 100
		static let backgroundColor: UIColor = .black
	}
	
	override func viewDidLoad() {
		let subview = UIView(frame: CGRect(x: 0, y: 0, width: Const.width, height: Const.height))
		view.addSubview(subview)
	}
}
```

To:

```swift
class ViewController: UIViewController, ConstConvertable {
	enum Const {
		case width
    case height
    case backgroundColor
    
    var object: Any {
      switch self {
        case .width, .height: return CGFloat(10)
        case .backgroundColor: return UIColor.black
      }
    }
	}
	
	override func viewDidLoad() {
		let subview = UIView(frame: CGRect(x: 0, y: 0, width: a(.width), height: a(.height))
		view.addSubview(subview)
	}
}
```



## Must have to

- [ ] The type of `object` and the type where used must match.

## Benefits

- Convenient constant management
- Convenient duplicate constant management



## Source

```swift
protocol Constable {
  var object: Any { get }
}

protocol ConstConvertable {
  associatedtype Const: Constable
}

extension ConstConvertable {
  func a<T>(_ value: Const) -> T {
    return value.object as! T
  }
}
```

