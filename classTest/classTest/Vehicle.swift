//
//  Vehicle.swift
//  classTest
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Vehicle {
    private var engine = "2-Cylinder"
    private var color = "Black"
    private var _odometer = 500
    
    //GETTER / SETTER (Accessors & Mutators)
    var odometer: Int{
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
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