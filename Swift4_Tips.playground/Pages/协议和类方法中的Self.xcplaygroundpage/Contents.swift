//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

protocol Copyable {
    func copy() -> Self
}

class MyCalss: Copyable {
    var num = 1
    
    func copy() -> Self {
        let result = type(of: self).init()
        result.num = num
        return result
    }
    
    required init() {
        
    }
}

let object = MyCalss()
object.num = 100

let newObject = object.copy()
object.num = 1
print(object.num)
print(newObject.num) // 返回对 object 的 拷贝
