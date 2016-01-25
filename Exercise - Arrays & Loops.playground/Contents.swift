//: Playground - noun: a place where people can play

import UIKit

var oddNumbers = [Int]()

for var x = 1; x <= 100; x++ {
    if x % 2 != 0{
        oddNumbers.append(x)
    }
}

var sums = [Int]()

for number in oddNumbers{
    sums.append(number+5)
}


var x = 0
repeat {
    print("The sum is: \(x)")
    x++
} while x <= sums.count

print(sums)