//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)
func doWork(block: () -> ()) {
    block()
}

doWork {
    print("work")
}

func doWorkAsync(block: @escaping() -> ()) {
    DispatchQueue.main.async {
        block()
    }
}

class S {
    var foo = "foo"
    func method1() {
        doWork {
            print(foo)
        }
        foo = "bar"
    }
    func method2() {
        doWorkAsync {
            print(self.foo)
        }
        foo = "bar"
    }
    
    func method3() {
        doWorkAsync {[weak self] in
            print(self?.foo ?? "nil")
        }
    }
}

S().method1()
S().method2()

protocol P {
    func work(b: @escaping () -> ())
}

class C: P {
    func work(b: @escaping () -> ()) {
        DispatchQueue.main.async {
            print("in C")
            b()
        }
    }
}

// 无法通过编译
/*class C1: P {
    func work(b: @escaping () -> ()) {
        
    }
}*/
