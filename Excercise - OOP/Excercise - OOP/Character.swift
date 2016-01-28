//
//  Character.swift
//  Excercise - OOP
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 20
    
    
    var hp: Int {
        return _hp
    }
    
    var attackPower: Int {
        return _attackPower
    }
    
    func isAlive() -> Bool {
        if _hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
    init(hp: Int, attackPwr: Int){
        self._hp = hp
        self._attackPower = attackPwr
    }
    
    func attacked(damage: Int) -> Bool {
        _hp -= damage
        return true
    }
    
    
    
    
}