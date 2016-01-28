//: Playground - noun: a place where people can play

import UIKit

//delcaration
var webster: [String: String] = ["Krill":"Any of the small crustaceans","fire":"a fire burning mass of material"]

var anotherDictionary: [Int: String] = [44:"My favorite number", 31:"i hate this number"]

//bad way
print(webster["Krill"])

//better way, if it exists'
//very powerfull
if let krill = webster["Krill"]{
    print(krill)
}

//clear dictionary
webster = [:]

if webster.isEmpty {
    print("our Dictionary is empty")
}

var highScore: [String: Int] = ["Mummi":230,"Tommy":170,"Anders":199,"Snow": 400,"Kim": 323]


//iterate through dictionary
for (user, score) in highScore {
    print("\(user): \(score)")
}

highScore["MummiSnow"] = 480

for (user, score) in highScore {
    if score >= 200 {
        print("\(user): \(score)")
    }
}



