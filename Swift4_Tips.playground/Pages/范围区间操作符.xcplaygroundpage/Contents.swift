//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

for i in 0...3 {
    print(i, terminator: "")
}

let test = "hellO"
let interval = "a"..."z"
for c in test {
    if !interval.contains(String(c)) {
        print("\(c)不是小写字母")
    }
}

