//
//  CreateMovieVC.swift
//  Excercise - Favorite Movies
//
//  Created by Mohammed Joseph Petrelli Salameh on 03/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class CreateMovieVC: UIViewController {

    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var blurBg: UIImageView!
    
    @IBOutlet weak var cancelBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cancelBtn.setFAIcon(FAType.FAClose, forState: .Normal)
        
        //manual blue for view
//        let blurEffect = UIBlurEffect(style: .Dark)
//        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
//        blurredEffectView.frame = CGRectMake(0, 0, blurBg.frame.width, blurBg.frame.height)
//        blurBg.addSubview(blurredEffectView)

        
    }

    @IBAction func cancelBtnTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    


}
