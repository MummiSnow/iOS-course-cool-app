//: Playground - noun: a place where people can play

import UIKit

//class
class Vehicle {
    private var engine = "2-Cylinder"
    private var color = "Black"
    private var odometer = 0
    
    //cosntructor
    init(engine: String, color: String){
        self.engine = engine
        self.color = color
    }
    
    init(){
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}

//var mercedes = Vehicle(engine: "6-Cylinder", color: "Orange")
//
//var volvo = Vehicle()
//
//var cars = [Vehicle]()
//
//cars.append(mercedes)
//cars.append(volvo)
//
//print(mercedes.odometer)
//mercedes.enterMiles(2000)
//print(mercedes.odometer)





