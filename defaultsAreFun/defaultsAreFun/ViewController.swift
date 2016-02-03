//
//  ViewController.swift
//  defaultsAreFun
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favLabel: UILabel!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favLabel.text = "Favorite Color: \(color)"
        } else {
            favLabel.text = "Pick A Color!"
        }
        
        let personA = Person(first: "Mummi", last: "Snow")
        let personB = Person(first: "Lady", last: "Gaga")
        let personC = Person(first: "Muffin", last: "Bieber")
        
        people.append(personA)
        people.append(personB)
        people.append(personC)
        
        //new variable that holds our converted data
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(people)
        
        
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: "people")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func orange(sender: AnyObject) {
        favLabel.text = "Favorite Color: Orange"
        NSUserDefaults.standardUserDefaults().setValue("Orange", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func blue(sender: AnyObject) {
        favLabel.text = "Favorite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        //load the people
        if let loadedPeople = NSUserDefaults.standardUserDefaults().objectForKey("people") as? NSData {
            if let peopleArray = NSKeyedUnarchiver.unarchiveObjectWithData(loadedPeople) as? [Person] {
                
                for person in peopleArray {
                    print(person.firstName)
                }
                
            }
        }
    }
    
    @IBAction func yellow(sender: AnyObject) {
        favLabel.text = "Favorite Color: Yellow"
        NSUserDefaults.standardUserDefaults().setValue("Yellow", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}

