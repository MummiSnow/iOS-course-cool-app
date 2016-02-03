//
//  YellowVC.swift
//  navigationController
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func popVC (sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
    }
    
}
