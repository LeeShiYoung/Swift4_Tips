//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
class MyClass {
    
}

private var key: Void?

extension MyClass {
    var title: String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        set {
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

func printTitle(_ input: MyClass) {
    if let title = input.title {
        print("Title: \(title)")
    } else {
        print("没有设置")
    }
}

let a = MyClass()
printTitle(a)
a.title = "lsy"
printTitle(a)

