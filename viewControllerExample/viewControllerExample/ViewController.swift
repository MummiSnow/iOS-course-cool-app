//
//  ViewController.swift
//  viewControllerExample
//
//  Created by Mohammed Joseph Petrelli Salameh on 28/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //ONLY CALLED ONCE WHEN FIRST LOADED IN MEMORY
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orangeColor()
        
    }

    
    //RIGHT BEFORE VIEWS APPEAR ON SCREEN
    //CALLED EVERY time
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        //refresh data/table etc
    }
    
    
    //Put code that modifies view layout if viewWillAppear Doesn't work
    override func viewDidLayoutSubviews() {
        
    }
    
    
    

}

