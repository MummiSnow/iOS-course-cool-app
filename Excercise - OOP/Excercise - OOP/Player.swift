//
//  Player.swift
//  Excercise - OOP
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String!
    
    var name: String {
        return _name
    }
    
    convenience init(name: String, startHp: Int, attackPower: Int){
        self.init(hp: startHp, attackPwr: attackPower)
        self._name = name
    }
    
}