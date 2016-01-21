//
//  ViewController.swift
//  Tapper
//
//  Created by Mohammed Joseph Petrelli Salameh on 21/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var counterLbl: UILabel!
    
    @IBAction func onCoinTabbed(sender: UIButton!) {
        currentTaps++
        updateCounterLbl()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func startGame(sender: UIButton!){
        
        if tapTxt.text != nil && tapTxt.text != "" {
            logoImg.hidden = true
            tapTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            counterLbl.hidden = false
            
            maxTaps = Int(tapTxt.text!)!
            currentTaps = 0
            
            updateCounterLbl()
            
        }
    }
    
    func restartGame(){
        maxTaps = 0
        tapTxt.text = ""
        
        logoImg.hidden = false
        tapTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        counterLbl.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps || currentTaps == maxTaps {
            return true
        }
        return false
    }
    
    func updateCounterLbl(){
        counterLbl.text = "\(currentTaps) Taps"
    }

}

