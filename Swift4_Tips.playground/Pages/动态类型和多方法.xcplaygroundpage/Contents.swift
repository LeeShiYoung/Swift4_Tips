//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class Pet {}
class Cat: Pet {}
class Dog: Pet {}

func printPet(_ pet: Pet) {
    print("Pet")
}

func printPet(_ cat: Cat) {
    print("Meow")
}

func printPet(_ dog: Dog) {
    print("Bark")
}

printPet(Cat())
printPet(Dog())
printPet(Pet())

func printThem(_ pet: Pet, _ cat: Cat) {
    printPet(pet)
    printPet(cat)
}

print("-----------")
printThem(Dog(), Cat()) // 输出错误

func printThem2(_ pet: Pet, _ cat: Cat) {
    if let aCat = pet as? Cat {
        printPet(aCat)
    } else if let aDog = pet as? Dog {
        printPet(aDog)
    }
    printPet(cat)
}
print("-----------")

printThem2(Dog(), Cat())
