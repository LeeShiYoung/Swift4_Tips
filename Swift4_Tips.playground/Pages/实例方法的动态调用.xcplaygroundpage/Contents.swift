//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class MyClass {
    func method(number: Int) -> Int {
        return number + 1
    }
    
    class func method(number: Int) -> Int {
        return number
    }
}

let object = MyClass()
let result = object.method(number: 1)

//let f = MyClass.method
//let object2 = MyClass()
//let result2 = f(object)(1)

let f1 = MyClass.method

let f2: (Int) -> Int = MyClass.method

let f3: (MyClass) -> (Int) -> Int = MyClass.method
f3(MyClass())(2)
