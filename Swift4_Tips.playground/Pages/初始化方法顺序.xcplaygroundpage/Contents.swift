//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class Cat {
    var name: String
    init() {
        name = "cat"
    }
}

class Tiger: Cat {
    let power: Int
    override init() {
        power = 10
        // 如不对父类属性修改则可以省略 super.init()
        //        super.init()
        //        name = "tiger"
    }
}

class ClassA {
    let numA: Int
    required init(num: Int) {
        numA = num
    }
    
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}

class ClassB: ClassA {
    let numB: Int
    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
    
    
}
ClassA(bigNum: false)
ClassB(bigNum: true)
