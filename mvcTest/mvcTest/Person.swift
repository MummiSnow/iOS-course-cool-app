//
//  Person.swift
//  mvcTest
//
//  Created by Mohammed Joseph Petrelli Salameh on 28/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    
    var firstName: String {
        get {
            return _firstName
        }
        
        set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    init(first: String, last: String) {
        self._lastName = last
        self._firstName = first
    }
    
    
    var fullName: String {
        return "\(_firstName) \(_lastName)"
    }
    
}