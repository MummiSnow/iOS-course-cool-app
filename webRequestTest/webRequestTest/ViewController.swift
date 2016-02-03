//
//  ViewController.swift
//  webRequestTest
//
//  Created by Mohammed Joseph Petrelli Salameh on 03/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/1/"
        
        let session = NSURLSession.sharedSession()
        
        let url = NSURL(string: urlString)
        
        session.dataTaskWithURL(url!) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    //convert it to a dictionary
                    if let dict = json as? Dictionary<String, AnyObject> {
                        
                        if let name = dict["name"] as? String,
                            let height = dict["height"] as? String,
                            let birth = dict["birth_year"] as? String,
                            let hairColor = dict["hair_color"] as? String {
                            
                            let person = Person(name: name, height: height, birthYear: birth, hairColor: hairColor)
                            
                            print(person.name)
                            print(person.height)
                            print(person.birthYear)
                            print(person.hairColor)
                                
                            //[] ARRAY
                            if let films = dict["films"] as? [String] {
                                for film in films {
                                    print(film)
                                }
                            }
                            
                        }
                        
                    }
                    
                } catch {
                    print("Could not serilize")
                }
            }
        }.resume()
        
    }

    

}

