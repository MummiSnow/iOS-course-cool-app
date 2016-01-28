//
//  DragImg.swift
//  myLittleMonster
//
//  Created by Mohammed Joseph Petrelli Salameh on 27/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation

import UIKit

class DragImg: UIImageView {
    
    //hold our beginningpoint
    var originalPosition: CGPoint!
    
    //UIView and not UIImage cause of reusability
    var dropTarget: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //touch methods
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //center point in the view
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //grab the very touch in the Set
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            
            self.center = CGPointMake(position.x, position.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //if there is a touch and there is a target, go run the code
        if let touch = touches.first, let target = dropTarget {
            
            let position = touch.locationInView(self.superview)
            
            //if the touch is any where on the target frame
            
            if CGRectContainsPoint(target.frame, position) {
                //posting notification, if we feed him and so on
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "onTargetDropped", object: nil))
            }
        }
        
        //resets IMG to origin position
        self.center = originalPosition

    }
}
















