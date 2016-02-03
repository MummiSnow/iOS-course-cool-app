//
//  Person.swift
//  defaultsAreFun
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Person: NSObject, NSCoding {
    
    var firstName: String!
    var lastName: String!
    
    init(first: String, last: String) {
        firstName = first
        lastName = last
    }
    
    override init () {
        
    }
    
    //whenever you try to save this with NSUserDefaults. This will be called
    //and it will know how to decode the properties
    required convenience init?(coder aDecoder: NSCoder){
        self.init()
        self.firstName = aDecoder.decodeObjectForKey("firstName") as? String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as? String
    }
    
    //for saving with the NSUserDefaults
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
    }
    
}