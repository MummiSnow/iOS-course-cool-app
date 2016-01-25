//
//  ViewController.swift
//  Multiples
//
//  Created by Mohammed Joseph Petrelli Salameh on 22/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    var multiple: Int = 0
    var currentMultiple: Int = 0
    var sum: Int = 0
    var maxNumber: Int = 100
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multipleTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var AddBtn: UIButton!
    @IBOutlet weak var SumLbl: UILabel!

    @IBAction func StartGame(sender: UIButton){
        if multipleTxt.text != nil && multipleTxt.text != ""{
            
            logo.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
            
            AddBtn.hidden = false
            SumLbl.hidden = false
            
            multiple = Int(multipleTxt.text!)!
            currentMultiple = 0
            
        }
    }
    
    func restartGame(){
        if isGameOver(){
            logo.hidden = false
            multipleTxt.hidden = false
            playBtn.hidden = false
            
            AddBtn.hidden = true
            SumLbl.hidden = true
            
            multipleTxt.text = ""
        }
    }
    
    func isGameOver()-> Bool {
        if sum >= maxNumber || sum == maxNumber {
            return true
        }
        return false
    }
    
    @IBAction func addTapped(sender: UIButton){
        currentMultiple += multiple
        sum = currentMultiple + multiple
        updateSumLbl()
        
        if isGameOver(){
            restartGame()
        }
    }

    func updateSumLbl(){
        SumLbl.text = "\(currentMultiple) + \(multiple) = \(sum)"
    }
}

