//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

protocol Food { }

protocol Animal {
    associatedtype F: Food
    func eat(_ food: F)
}

struct Meat: Food { }

struct Grass: Food { }

struct Tiger: Animal {
    
    func eat(_ food: Meat) {
        print("eat \(food)")
    }
}

struct Sheep: Animal {
    func eat(_ food: Grass) {
        print("eat \(food)")
    }
}

let meat = Meat()
Tiger().eat(meat)

func isDangerous<T: Animal>(animal: T) -> Bool {
    if animal is Tiger {
        return true
    } else {
        return false
    }
}

// 报错：无法推断 Animal 类型
//func isD(animal: Animal) -> Bool {
//    return true
//}

isDangerous(animal: Tiger())
isDangerous(animal: Sheep())
