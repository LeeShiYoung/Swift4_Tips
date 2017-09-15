//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class MyCalss {
    let oneYearInsecond: TimeInterval = 365 * 24 * 60 * 60
    var date: NSDate {
        
        willSet {
            let d = date
            print("即将将日期从\(d)设至\(newValue)")
        }
        
        didSet {
            if (date.timeIntervalSinceNow > oneYearInsecond) {
                print("设定的时间太晚了")
                date = NSDate().addingTimeInterval(oneYearInsecond)
            }
            print("已经将日期从\(oldValue)设定至\(date)")
        }
    }
    
    init() {
        date = NSDate()
    }
}

let foo = MyCalss()
foo.date = foo.date.addingTimeInterval(100_000_000)




