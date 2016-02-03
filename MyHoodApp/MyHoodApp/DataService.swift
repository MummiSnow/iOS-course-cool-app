//
//  DataService.swift
//  MyHoodApp
//
//  Created by Mohammed Joseph Petrelli Salameh on 02/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    //only create one instance
    static let instance = DataService()
    
    let KEY_POSTS = "posts"
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post] {
        return _loadedPosts
    }
    
    func savePosts(){
        //array to data
        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        //storage mechanism. So we can retrieve it
        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
        
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    func loadPosts(){
        //retrieve key by KEY if it EXISTS
        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData {
            //turn to an array of posts
            if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Post] {
                _loadedPosts = postsArray
            }
        }
        //notify listeners
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postsLoaded", object: nil))
    }
    
    func saveImageAndCreatePath(image: UIImage) -> String {
        //saving the image as data
        let imgData = UIImagePNGRepresentation(image)
        //save image with a unique name
        let imgPath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
        let fullPath = documentsPathForFileName(imgPath)
        imgData?.writeToFile(fullPath, atomically: true)
        
        return imgPath
    }
    
    func imageForPath (path: String) -> UIImage? {
        let fullPath = documentsPathForFileName(path)
        let image = UIImage(named: fullPath)
        
        return image
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
    
    
    //have to use this directory when we load and save images
    //get the path for a specific file name
    func documentsPathForFileName(name: String) -> String {
        //gives us an array
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        
        let fullPath = paths[0] as NSString
        //only available in NSSTRING
        return fullPath.stringByAppendingPathComponent(name)
        
    }
}












