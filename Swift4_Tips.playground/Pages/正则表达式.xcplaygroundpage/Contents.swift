//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct RegexHelper {
    let regex: NSRegularExpression
    
    init(_ pattern: String) throws {
        try regex = NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    }
    
    func match(_ input: String) -> Bool {
        let matchs = regex.matches(in: input, options: [], range: NSMakeRange(0, input.utf16.count))
        return matchs.count > 0
    }
}
let mailPattern =
"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"

let matcher: RegexHelper
do {
    matcher = try RegexHelper(mailPattern)
}

let maybeMailAddress = "shyoung_li163.com"
if matcher.match(maybeMailAddress) {
    print("有效的邮箱地址")
}

precedencegroup MatchPrecedence {
    associativity: none
    higherThan: DefaultPrecedence
}
infix operator =~: MatchPrecedence
func =~(lhs: String, rhs: String) -> Bool {
    do {
        return try RegexHelper(rhs).match(lhs)
    } catch _ {
        return false
    }
}

func ~=(pattern: NSRegularExpression, input: String) -> Bool {
    return pattern.numberOfMatches(in: input, options: [], range: NSRange(location: 0, length: input.count)) > 0
}

