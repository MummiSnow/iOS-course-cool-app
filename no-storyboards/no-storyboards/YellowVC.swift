//
//  ViewController.swift
//  no-storyboards
//
//  Created by Mohammed Joseph Petrelli Salameh on 31/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
    
    //reference to next view
    var blueVC: BlueVC!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loadBlueView(sender: AnyObject) {
        blueVC = BlueVC(printMe: "Print this now!")
        self.presentViewController(blueVC, animated: true, completion: nil)
    }
}

