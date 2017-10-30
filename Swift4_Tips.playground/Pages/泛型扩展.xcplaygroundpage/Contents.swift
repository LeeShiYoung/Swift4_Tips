//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

extension Array {
    var random: Element? {
        return self.count != 0 ? self[Int(arc4random_uniform(UInt32(self.count)))] : nil
    }
    
    func appendRandomDescription<U: CustomStringConvertible>(_ input: U) -> String {
        if let element = self.random {
            return "\(element)" + input.description
        } else {
            return "empty array"
        }
    }
}

let languages = ["Swift", "OC", "Java"]
print(languages.random)
print(languages.random)
print(languages.random)

let ranks = [1, 2, 3, 4]
ranks.random!
languages.appendRandomDescription(ranks.random!)
