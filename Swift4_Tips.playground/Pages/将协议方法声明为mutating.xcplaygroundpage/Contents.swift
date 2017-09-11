//: [Previous](@previous)

import Foundation
import UIKit
//: 将协议方法声明为mutating
protocol Vehicle {
    var numberOfWheets: Int {get}
    var color: UIColor {get set}
    mutating func changeColor()
}

struct MyCar: Vehicle {
    let numberOfWheets = 4
    var color = UIColor.blue
    mutating func changeColor() {
        color = .red
    }
}


