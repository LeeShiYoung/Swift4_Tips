//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let mixed: [CustomStringConvertible] = [1, "two", 3]
for obj in mixed {
    print(obj.description)
}

enum IntOrString {
    case IntValue(Int)
    case StringValue(String)
}

let mixed2 = [IntOrString.IntValue(1),
              IntOrString.StringValue("two"),
              IntOrString.IntValue(3)]
for value in mixed2 {
    switch value {
    case let .IntValue(i):
        print(i * 2)
    case let .StringValue(s):
        print(s.capitalized)
    }
}

