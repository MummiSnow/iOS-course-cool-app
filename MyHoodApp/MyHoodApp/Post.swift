//
//  Post.swift
//  MyHoodApp
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _title: String!
    private var _postDesc: String!
    private var _imagePath: String!
    
    
    var title: String {
    
        get {
            return _title
        }
    
    }
    
    var imagePath: String {
        get {
            return _imagePath
        }
    }
    
    var postDesc: String {
        get {
            return _postDesc
        }
    }
    
    override init() {
        
    }
    
    init (imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
    }
    
    //whenever the load is called
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        //when somebody is unarchiving you, we will decode you (loadPosts in DATASERVICE)
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postDesc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    
    //whenever the save is called
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._postDesc, forKey: "description")
        aCoder.encodeObject(self._title, forKey: "title")
    }
    
}