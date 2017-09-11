//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
class Toy {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Pet {
    var toy: Toy?
}

class Child {
    var pet: Pet?
}

let xiaoming = Child()
let toyName = xiaoming.pet?.toy?.name

extension Toy {
    func play() {
        // ...
    }
}
xiaoming.pet?.toy?.play()

let playClosure = {(child: Child) -> Void? in
    child.pet?.toy?.play()
}

if let _: () = playClosure(xiaoming) {
    print("好开心")
} else {
    print("没有玩具可以玩")
}
