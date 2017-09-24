//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class MyManager {
    class var shard: MyManager {
        struct Static {
            static let sharedInstance: MyManager = MyManager()
        }
        return Static.sharedInstance
    }
}

