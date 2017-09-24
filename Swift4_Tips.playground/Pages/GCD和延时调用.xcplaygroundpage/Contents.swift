//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let workingQueue = DispatchQueue(label: "my_queue")
workingQueue.async {
    Thread.sleep(forTimeInterval: 2) // 延时两秒
    DispatchQueue.main.async {
        print("结束工作， 更新UI")
    }
}

let time: TimeInterval = 2.0
DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
    print("2 秒后输出")
}

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

delay(2) {
    print("2 秒后输出 ")
}

let task = delay(5) {
    print("拨打 110")
}

cancel(task)

