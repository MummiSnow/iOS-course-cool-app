//
//  ViewController.swift
//  Excercise - OOP
//
//  Created by Mohammed Joseph Petrelli Salameh on 26/01/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var enemyHp: UILabel!
    
    @IBOutlet weak var playerImg: UIImageView!
    
    @IBOutlet weak var playerHp: UILabel!
    @IBOutlet weak var displayLbl: UILabel!
    
    @IBOutlet weak var playerButton: UIButton!
    @IBOutlet weak var enemyButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var winnerLbl: UILabel!
    
    var player: Player!
    var enemy: Player!
    
    var timer = NSTimer()
    var timeCount: NSTimeInterval = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Mummi", startHp: 100, attackPower: 30)
        
        enemy = Player (name: "Snow", startHp: 110, attackPower: 25)
        
        restartButton.hidden = true
        winnerLbl.hidden = true
        
    }
    
    func startTimer(character: Player) -> Bool{
        timer = NSTimer.scheduledTimerWithTimeInterval(timeCount, target: self, selector: "stopTimer", userInfo: nil, repeats: false)
        if character.name == enemy.name {
            playerButton.enabled = false
            return false
        }else {
            enemyButton.enabled = false
            return true
        }
    }
    
    func stopTimer(){
        timer.invalidate()
        enemyButton.enabled = true
        playerButton.enabled = true
    }
    
    @IBAction func restartGame(sender: AnyObject) {
        timer.invalidate()
        player = Player(name: "Mummi", startHp: 100, attackPower: 30)
        
        enemy = Player (name: "Snow", startHp: 110, attackPower: 25)
        
        playerHp.hidden = false
        playerHp.text = "\(player.hp)"
        playerImg.hidden = false
        enemyImg.hidden = false
        enemyHp.hidden = false
        enemyHp.text = "\(enemy.hp)"
        
        restartButton.hidden = true
        winnerLbl.hidden = true
        displayLbl.text = "Who can win the BATTLE"
        
    }
    
    @IBAction func onEnemyAttackTapped(sender: AnyObject) {
        startTimer(enemy)
        if player.attacked(enemy.attackPower) && enemy.isAlive(){
            playerButton.enabled = false
            displayLbl.text = "\(enemy.name) attacked \(player.name) with \(enemy.attackPower) HP"
            playerHp.text = String(player.hp)
        } else {
            displayLbl.text = "\(player.name) didnt take any Damage!"
        }
        
        if !player.isAlive() {
            showEndScreen(enemy)
            hidePlayScreen()
        }
        
        
    }
    
    
    @IBAction func onPlayerAttackTapped(sender: AnyObject) {
        startTimer(player)
        if enemy.attacked(player.attackPower){
            displayLbl.text = "\(player.name) attacked \(enemy.name) with \(player.attackPower) HP"
            enemyHp.text = String(enemy.hp)
        } else {
            displayLbl.text = "\(enemy.name) didnt take any Damage!"
        }
        
        if !enemy.isAlive() {
            showEndScreen(player)
            hidePlayScreen()
        }
    }
    
    
    func showEndScreen(name: Player){
        restartButton.hidden = false
        winnerLbl.hidden = false
        winnerLbl.text = "\(name.name) is the Winner!"
        displayLbl.text = ""
    }
    

    
    func hidePlayScreen(){
        playerHp.hidden = true
        playerImg.hidden = true
        enemyImg.hidden = true
        enemyHp.hidden = true
    }
    
    
    
    
    
}

