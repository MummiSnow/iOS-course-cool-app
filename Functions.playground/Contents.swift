//: Playground - noun: a place where people can play

import UIKit


var Account = 500.50
var Item = 202.22

func purchase(){
    if Account >= Item{
        Account -= Item
    }
}

//parameter
// without var it is a let in the parameter
func attemptPurchase(amount: Double){
    if Account >= amount{
        Account -= amount
    }else{
        print("Insufficient funds!")
    }
}

//return
func canPurchase(amount:Double) -> Bool {
    if Account >= amount{
        return true
    }
    return false

}


func processPurchase(amt: Double) {
    Account -= amt
    print("you made a purchase of: \(amt)")
}


if canPurchase(Item){
    processPurchase(Item)
} else {
    print("Insufficient funds")
}



var name = "mummi snow"

func uppercase(inputstr: String) -> String {
    return inputstr.uppercaseString
}


var nameUpper = uppercase(name)





//multiple parameters
func findWinner(playerAScore: Int, playerBScore: Int){
    if playerAScore > playerBScore{
        print("player A is the winner")
    } else if playerBScore > playerAScore{
        print("player B is the winner")
    }else {
        print("Its a tie :(")
    }
}

findWinner(50, playerBScore: 50)










