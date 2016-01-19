//: Playground - noun: a place where people can play

import UIKit

//Integer

var myMummiAccount: Int = -40

///unsigned integer, only FOR NON NEGATIVE VALUE
//var myMummiAccount2: UInt = -200

var myAge: UInt = 21

//Int, could cause overflow problems
var hugeNumber: Int = 2147483677555

//Int64
var bigNumber: Int64 = 2147483677555

//Double, precision of 15 decimal digits
//Float, precision of 6 decimal digits
var anotherAccount = 55.5
var someValue: Float = 5.5

//var sum = anotherAccount * someValue
//doesnt work because of type safety. Less crashes during runtime etc.

var sum2 = anotherAccount * Double(someValue)
