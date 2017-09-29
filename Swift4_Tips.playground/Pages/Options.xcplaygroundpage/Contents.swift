//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct YourOption: OptionSet {
    let rawValue: UInt
    static let none = YourOption(rawValue: 0)
    static let option1 = YourOption(rawValue: 1)
    static let option2 = YourOption(rawValue: 1 << 1)
}
