//: Playground - noun: a place where people can play

import UIKit

//Array Literal, we are putting literal values in it from declaration
var names = ["Mummi", "Tommy", "Jungle", "Nazi"]

var numbers = [44, 55, 213, 52135, 6644, 32]

var peopleHotOrNot = [true, false, true, false, false, false, false]

//empty array, initialized
var countries = [String]()

var top3Colors = [String](count: 3, repeatedValue: "Boring Brown")

//change collection

top3Colors[0] = "Blue"
top3Colors[1] = "Red"
top3Colors[2] = "Burlywood"

//adding
var favCars = [String]()
favCars.append("BMW M6")
favCars.append("Mercedes Benz SLS")
favCars.append("Ford Pinto")
favCars.removeAtIndex(2)
favCars.append("1969 Chevy Camaro")
//adding at certain spot
favCars.insert("Nissan GTR", atIndex: 0)


var shoppingCart = [String]()
var budget = 500.0
var currentCartAmount = 0.0

func addItemToCart(item: String, price: Double){
    if currentCartAmount + price <= budget {
        shoppingCart.append(item)
        currentCartAmount += price
    }else{
        print("not Enough moneys")
    }
}

addItemToCart("ROCKET LEAGUE", price: 19.99)

print(currentCartAmount)

addItemToCart("THE DIVISION", price: 99.99)

print(currentCartAmount)

addItemToCart("Couch", price: 200.32)

print(currentCartAmount)

addItemToCart("PS4", price: 349.99)

print(currentCartAmount)

print(shoppingCart)




















