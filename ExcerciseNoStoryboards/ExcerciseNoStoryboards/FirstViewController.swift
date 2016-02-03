//
//  FirstViewController.swift
//  ExcerciseNoStoryboards
//
//  Created by Mohammed Joseph Petrelli Salameh on 31/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var secondVC: SecondViewController!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadSecondVC(sender: AnyObject) {
        secondVC = SecondViewController()
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    
}
