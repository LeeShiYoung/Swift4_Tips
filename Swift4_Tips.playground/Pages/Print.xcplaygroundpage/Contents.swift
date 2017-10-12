//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct Meeting {
    var place: String
    var date: NSDate
    var attendeeName: String
}

let meeting = Meeting(place: "hangzhou", date: NSDate(), attendeeName: "lsy")
print(meeting)

extension Meeting: CustomStringConvertible {
    var description: String {
        return "于\(self.date)在\(self.place)与\(self.attendeeName)进行会议"
    }
}
