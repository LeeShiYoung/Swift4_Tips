//: [Previous](@previous)

import Foundation
import UIKit

var str = "Hello, playground"

//: [Next](@next)

func distance(from point: CGPoint, to anotherPoint: CGPoint) -> Double {

    let dx = Double(anotherPoint.x - point.x)
    let dy = Double(anotherPoint.y - point.y)
    return sqrt(dx * dx + dy * dy)
}

let origin: CGPoint = CGPoint(x: 0, y: 0)
let point: CGPoint = CGPoint(x: 1, y: 1)
let d: Double = distance(from: origin, to: point)

// 改进
typealias Location = CGPoint
typealias Distance = Double

func distance2(from location: Location, to anotherLocation: Location) -> Distance {
    let dx = Distance(location.x - anotherLocation.x)
    let dy = Distance(location.y - anotherLocation.y)
    return sqrt(dx * dx + dy * dy)
}

let origin2: Location = Location(x: 0, y: 0)
let point2: Location = Location(x: 1, y: 1)
let d2: Distance = distance(from: origin2, to: point2)

//typealias Work<T> = Person<T>

