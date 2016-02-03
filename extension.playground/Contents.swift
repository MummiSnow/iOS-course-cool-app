//: Playground - noun: a place where people can play

import UIKit

var account1 = 400.32
var account2 = 500.12
var account3 = 600.14

print("$\(account1)")
print("$\(account2)")
print("$\(account3)")


extension Double {
    var currency: String {
        return "$\(self)"
    }
}


print(account1.currency)
print(account2.currency)
print(account3.currency)

extension String {
    
}

extension UIView {
    
}


//IF you do alot of repition, USE EXTENSIONS!!