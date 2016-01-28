//
//  Player.swift
//  rpgop
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String = "Player"
    
    var name: String {
        return _name
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemToInventory(item: String){
        _inventory.append(item)
    }
    
    convenience init (name: String, hp: Int, attackPwr: Int) {
        self.init(startHp: hp, attackPwr: attackPwr)
        self._name = name
    }
    
}