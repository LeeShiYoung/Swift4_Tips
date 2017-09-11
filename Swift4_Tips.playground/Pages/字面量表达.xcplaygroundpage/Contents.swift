//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
enum MyBool: Int {
    case myTure, myFalse
}
extension MyBool: ExpressibleByBooleanLiteral {
    init(booleanLiteral value: Bool) {
        self = value ? .myTure : .myFalse
    }
}

let myTrue: MyBool = true
let myFalse: MyBool = false
myTrue.rawValue
myFalse.rawValue

class Person: ExpressibleByStringLiteral {
    
    let name: String
    init(name value: String) {
        self.name = value
    }
    
    required convenience init(stringLiteral value: String) {
        self.init(name: value)
    }
    
    required convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(name: value)
    }
    
    required convenience init(unicodeScalarLiteral value: String) {
        self.init(name: value)
    }
}

let p: Person = "xiaoming"
print(p.name)

