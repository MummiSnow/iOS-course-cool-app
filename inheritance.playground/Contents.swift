//: Playground - noun: a place where people can play

import UIKit


class Person {
    private var _name: String?
    private var _eyeColor: String = "Brown"
    private var _speed: Int?
    private var _benchPress: Int?
    
    init(name: String){
        _name = name
    }
    
    func catchPhrase () -> String{
        return "Hi, iam an average person"
    }
}


var jon = Person(name: "Jon")

//Sub-Class
class Animorph: Person {
    
    var animalType = "Dog"
    
    //specific for this class, secondary
    convenience init(type: String, name:String){
        self.init(name:name)
        self.animalType = type
        self._speed = 25
    }
    
    //override
    override func catchPhrase() -> String {
        return "I can turn into a cool Animal"
    }
}

print(jon._eyeColor)
print(jon.catchPhrase())

var dolphin = Animorph(type: "Dolphin", name: "Jack")
print(dolphin._eyeColor)
print(dolphin.catchPhrase())

class SuperHero: Person{
    var abilityPower = "X-Ray Vision"
    var backStory = "SOme truck hit exploded with some chemicals and it landed on me"
    
    convenience init (name: String, press: Int){
        self.init(name: name)
        _benchPress = press
        
    }
    
    override func catchPhrase() -> String {
        return "With great power do stuff"
    }
}

var pukeMan = SuperHero(name: "Puke Man", press: 50000)
print(pukeMan.catchPhrase())
print(dolphin.catchPhrase())
print(jon.catchPhrase())

//UIView -> UIImageView
//UIView -> UIButton
//UIView -> UILabel







