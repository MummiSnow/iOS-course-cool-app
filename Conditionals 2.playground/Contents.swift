//: Playground - noun: a place where people can play

import UIKit

var Account = 1000.00
var FriendAccount = 2000.00
var OtherAccount = 3000.00

if Account > 900 && FriendAccount > 1500 && OtherAccount > 2000 {
    print("We've got those moneys my man!!")
}

var player1Alive = true
var player2Alive = false
var player3Alive = true

if player1Alive == false || player2Alive == false || player3Alive == false {
    print("someone is down, heeelp")
}

//Can I retire
var age = 21
var account = 10.00
var richUncleGaveInheritance = true

if account > 70000 && age >= 60 || richUncleGaveInheritance == true {
    print("you can retire")
}
