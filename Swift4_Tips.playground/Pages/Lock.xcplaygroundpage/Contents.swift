//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func myMethod(anObj: AnyObject) {
    objc_sync_enter(anObj)
    
    // 在这里持有 anObj 锁
    
    objc_sync_exit(anObj)
}

func synchronized(_ lock: AnyObject, closure: () -> ()) {
    objc_sync_enter(lock)
    closure()
    objc_sync_exit(lock)
}
func mhMethodLocked(anObj: AnyObject) {
    synchronized(anObj) {
        // 在括号内持有 anObj 锁
    }
}

class Obj {
    var _str = "123"
    var str: String {
        get{
            return _str
        }
        set {
            synchronized(self) {
                _str = newValue
            }
        }
    }
}

