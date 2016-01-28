//: Playground - noun: a place where people can play

import UIKit
import Foundation

class Shape {
    var area: Double?
    
    func calculateArea() {
        
    }
    
    func printArea() {
        print("The area is: \(area)")
    }
}

class Rectangle: Shape {
    var width = 1.0
    var height = 1.0
    
    init (width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    //polymorphism
    override func calculateArea() {
        area = width * height
    }
}

class Circle: Shape {
    var radius = 1.0
    
    init(radius: Double){
        self.radius = radius
    }
    
    override func calculateArea() {
        area = 3.14 * Double(pow(radius, 2))
    }
}

var circle = Circle(radius: 5.0)
var rectangle = Rectangle(width: 20, height: 5)

circle.calculateArea()
rectangle.calculateArea()

print(circle.area)
print(rectangle.area)


class Enemy {
    var hp = 100
    var attackPwr = 10
    
    init(hp: Int, attack: Int){
        self.hp = hp
        self.attackPwr = attack
    }
    
    func defendAttack (incomingAttack: Int){
        hp -= incomingAttack
    }
    
    
}

class AngryTroll: Enemy {
    var immunity = 10
    
    override func defendAttack(incomingAttack: Int) {
        if incomingAttack <= immunity {
            hp++
        } else {
            super.defendAttack(incomingAttack)
        }
    }
}




















