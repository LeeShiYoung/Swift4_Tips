//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let name = ["王小二", "张三", "李四", "王二小"]
name.forEach {
    switch $0 {
    case let x where x.hasPrefix("王"):
        print("\(x)是姓王")
    default:
        print("你好\($0)")
    }
}

let num: [Int?] = [48, 99, nil]
let n = num.flatMap { $0 }
for score in n where score > 60 {
    print("及格啦-\(score)")
}

num.forEach {
    if let score = $0, score > 60 {
        print("及格啦-\(score)")
    } else {
        print("没及格啊")
    }
}

