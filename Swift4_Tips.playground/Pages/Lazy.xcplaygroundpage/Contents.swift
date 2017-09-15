//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let data = 1...3

let result = data.lazy.map {
    (i: Int) -> Int in
    print("正在处理\(i)")
    return i * 2
}

print("准备访问结果")
for i in result {
    print("操作后的结果\(i)")
}
print("操作完毕")
