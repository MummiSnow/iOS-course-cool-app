//
//  ViewController.swift
//  enums
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onBtnTapped(sender: UIButton) {
        
        if sender.tag == Cars.BMW.rawValue {
            theLabel.text = "BMW i8 is an awesome Car"
        } else if sender.tag == Cars.HONDA.rawValue {
            theLabel.text = "It is actually quite decent"
        } else if sender.tag == Cars.TESLA.rawValue {
            theLabel.text = "omg, this car needs no intro"
        } else if sender.tag == Cars.SUBARU.rawValue {
            theLabel.text = "omg dont eve not even!!"
        }
        
    }
}

