//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

//: [Next](@next)

class MyClass {
    @objc func callMe() {
        print("Hi")
    }
}

let object = MyClass()
Timer.scheduledTimer(timeInterval: 1, target: object, selector: #selector(MyClass.callMe), userInfo: nil, repeats: true)
