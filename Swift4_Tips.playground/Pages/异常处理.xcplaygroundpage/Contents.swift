//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

let users = ["lsy": "545464"]
enum LoginError: Error {
    case UserNotFound, UserPasswoedNotMatch
}

func login(user: String, passwoed: String) throws {
    if !users.keys.contains(user) {
        throw LoginError.UserNotFound
    }
    
    if users[user] != passwoed {
        throw LoginError.UserPasswoedNotMatch
    }
    
    print("登录成功")
}

do {
    try login(user: "lsy", passwoed: "545464")
} catch LoginError.UserNotFound {
    print("无该用户")
} catch LoginError.UserPasswoedNotMatch {
    print("密码不正确")
}

enum E: Error {
    case Negative
}

func methodThrows(num: Int) throws {
    if num < 0 {
        print("Throwing!")
        throw E.Negative
    }
    print("Executed!")
}

func methodRethrows(num: Int, f: (Int) throws -> ()) rethrows {
    try f(num)
}

do {
    try methodRethrows(num: -1, f: methodThrows)
} catch _ {
    
}
