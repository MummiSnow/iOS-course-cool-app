//: Playground - noun: a place where people can play

import UIKit

//?, may or may not have a value. This is an optional
var lotteryWinnings: Int?
//!, means unwrapping, give me the value of the variable. Will crash if there isnt a value in it
//bad practice
//print(lotteryWinnings!)

//Better practice, u always check if it is nil
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

//Take the value of lottery and put it in winnings. Same idea as above but even better
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
}


var vehicle: Car?

//if let v = vehicle {
//    if let model = vehicle.model {
//        print(model)
//    }
//}
vehicle = Car()
vehicle?.model = "S-Class"
//Multiple let statement
if let v = vehicle, let m = vehicle?.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()
//Only execute if not nil and if more than 0 elements
if let carArray = cars where carArray.count > 0 {
    
} else {
    print(cars)
}

class Person {
    //there should be value GUARANTEED sooner or later
    //need to be initialized
    //var age: Int! Not the BEST
    //var age: Int = 0 ONE OPTION
    
    //Another Option
    private var _age: Int!
    
    var age: Int {
        if _age == nil{
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()

//print(jack._age)
print(jack.age)


class Dog {
    //its gonna have a value no matter what, because it is only accesible by the constructor
    var species: String
    
    init (someSpecies: String){
        self.species = someSpecies
    }
    
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)













