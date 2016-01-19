//
//  ViewController.swift
//  Excercise1
//
//  Created by Mohammed Joseph Petrelli Salameh on 19/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redPicture: UIImageView!
    @IBOutlet weak var bluePicture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redPicture.hidden = false
        bluePicture.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BlueButtonPressed(sender: AnyObject) {
        bluePicture.hidden = true
    }

    @IBAction func RedButtonPressed(sender: AnyObject) {
        redPicture.hidden = true
    }
}

