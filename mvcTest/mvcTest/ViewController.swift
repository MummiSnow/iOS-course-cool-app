//
//  ViewController.swift
//  mvcTest
//
//  Created by Mohammed Joseph Petrelli Salameh on 28/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var renameField: UITextField!
    @IBOutlet weak var fullName: UILabel!
    
    let person = Person(first: "Mummi", last: "Snow")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        fullName.text = person.fullName
    }


    @IBAction func renamePressed(sender: AnyObject) {
        
        if let text = renameField.text {
            person.firstName = text
            
            fullName.text = person.fullName
        }
    }

}

