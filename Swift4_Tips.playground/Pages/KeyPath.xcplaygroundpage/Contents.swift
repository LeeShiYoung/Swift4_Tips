//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
/*****************/
typealias Task = (_ cancel: Bool) -> Void
func delay(_ time: TimeInterval, task: @escaping () -> ()) -> Task? {
    func dispatch_later(block: @escaping () -> ()) {
        let t = DispatchTime.now() + time
        DispatchQueue.main.asyncAfter(deadline: t, execute: block)
    }
    
    var closure: (() -> Void)? = task
    var result: Task?
    let delayedClosure: Task = {
        cancel in
        if let internalClosure = closure {
            if (cancel == false) {
                DispatchQueue.main.async(execute: internalClosure)
            }
        }
        closure = nil
        result = nil
    }
    result = delayedClosure
    dispatch_later {
        if let delayedClosure = result {
            delayedClosure(false)
        }
    }
    return result
}

func cancel(_ task: Task?) {
    task?(true)
}

/********************/

class MyClass: NSObject {
    @objc dynamic var date = Date()
}
class AnotherClass: NSObject {
    var myObject: MyClass!
    var observation: NSKeyValueObservation?
    override init() {
        super.init()
        myObject = MyClass()
        print("初始化AnotherClass, 当前日期：\(myObject.date)")
        
        observation = myObject.observe(\MyClass.date, options: [.new], changeHandler: { (_, change) in
            if let newDate = change.newValue {
                print("AnotherClass 日期发生变化\(newDate)")
            }
        })
        
        delay(1) {
            self.myObject.date = Date()
        }
    }
}



