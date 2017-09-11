//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct MyCalssContainer1 {
    class MyClass {
        class func hello() {
            print("hello from MyClassCpmtainer1")
        }
    }
}

struct MyCalssContainer2 {
    class MyClass {
        class func hello() {
            print("heool from MyClassContainer2")
        }
    }
}

MyCalssContainer1.MyClass.hello()
MyCalssContainer2.MyClass.hello()
