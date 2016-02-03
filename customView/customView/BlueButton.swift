//
//  BlueButton.swift
//  customView
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class BlueButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        backgroundColor = UIColor(red: 46.0/255, green: 135.0/255, blue: 195.0/255, alpha: 1)
        
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }

}
