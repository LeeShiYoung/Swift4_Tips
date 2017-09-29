//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let arr: NSArray = [1, 2, 3,4, 5]
var result = 0
arr.enumerateObjects { (num, idx, stop) in
    result += num as! Int
    if idx == 2 {
        stop.pointee = true
    }
}

print(result)

var result2 = 0
for (idx, num) in [1, 2, 3, 4, 5].enumerated() {
    result2 += num
    if idx == 2 {
        break
    }
}

print(result2)
