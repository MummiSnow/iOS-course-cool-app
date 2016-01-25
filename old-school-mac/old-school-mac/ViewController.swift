//
//  ViewController.swift
//  old-school-mac
//
//  Created by Mohammed Joseph Petrelli Salameh on 22/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLbl: UILabel!
    
    var phrases = ["booting from floppy...\n","Reading from disk...\n", "Updating registry...\n", ".........\n", ".................\n", "Welcome Mummi. \n nice to see you man"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainLbl.text = ""
        
        
//        
//        for var x = 0; x < phrases.count; x++ {
//            var txt = mainLbl.text!
//            
//            txt += phrases[x]
//            mainLbl.text = txt
//            }
        
        
        
//        var x = 0
//        repeat {
//            var txt = mainLbl.text!
//            
//            txt += phrases[x]
//            mainLbl.text = txt
//            x++
//        } while x < phrases.count
        
        
        
        
        for phrase in phrases {
            var txt = mainLbl.text!
            txt += phrase
            mainLbl.text = txt
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

