//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// 编译错误
/*func incrementor(variable: Int) {
    return variable + 1
    print(variable)
    return variable
}*/

func incrementor2(variable: Int) -> Int {
    var num = variable
    num += 1
    return num
}

func incrementor(variable: inout Int) {
    variable += 1
}
var luckyNumber = 7
incrementor(variable: &luckyNumber)
print(luckyNumber)

func makeIncrementor(addNumber: Int) -> ((inout Int) -> ()) {
    func incrementor(variable: inout Int) -> () {
        variable += addNumber
    }
    return incrementor
}
let make = makeIncrementor(addNumber: 1)
make(&luckyNumber)
