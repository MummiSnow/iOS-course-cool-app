//
//  RoundedImageView.swift
//  mvcTest
//
//  Created by Mohammed Joseph Petrelli Salameh on 28/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}
