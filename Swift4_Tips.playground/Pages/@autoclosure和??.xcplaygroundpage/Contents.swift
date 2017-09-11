//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*func loglfTrue(_ predicate: () -> Bool) {
    if predicate {
        print("true")
    }
}

loglfTrue{ 2 > 1 }*/

func loglfTrue(_ predicate: @autoclosure () -> Bool) {
    if predicate() {
        print("True")
    }
}

loglfTrue(2 > 1)

// @autoclosure 不支持带输入参数的写法
func ??<T>(optional: T?, defultValue: @autoclosure() -> T) -> T {
    switch optional {
    case .some(let value):
        return value
    case .none:
        return defultValue()
    }
}

