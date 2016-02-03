//
//  ViewController.swift
//  segues
//
//  Created by Mohammed Joseph Petrelli Salameh on 31/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //navigation to new screen
    @IBAction func loadBlue(sender: AnyObject!) {
        //use SENDER to pass data
        let str = "Hey, we Just came from the yellow screen!"
        performSegueWithIdentifier("goToBlue", sender: str)
    }


    @IBAction func loadRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    
    //before a seque is called and before it shows on the screen
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //this is where you do work right before the view loads
        //keep in mind - the next view controller has already been initialized
        if segue.identifier == "goToBlue" {
            
            if let blueVC = segue.destinationViewController as? BlueViewController {
                
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
    }
}

