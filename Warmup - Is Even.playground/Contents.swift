//: Playground - noun: a place where people can play

import UIKit

func isEven(number: Int) -> Bool {
    if number % 2 == 0{
        return true
    }
    return false
}

print("\(isEven(2))")

print("\(isEven(8231))")

isEven(1)