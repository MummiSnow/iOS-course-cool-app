//
//  Character.swift
//  rpgop
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        return _hp
    }
    
    var isAlive: Bool {
        get {
            if _hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init (startHp: Int, attackPwr: Int) {
        self._hp = startHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack (attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
}