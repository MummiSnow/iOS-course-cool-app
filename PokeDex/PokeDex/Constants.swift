//
//  Constants.swift
//  PokeDex
//
//  Created by Mohammed Joseph Petrelli Salameh on 03/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import Foundation
//SERIES OF CONSTANTS THAT IS GLOBALLY AVAILABLE

let URL_BASE = "http://pokeapi.co"
let URL_POKEMON = "/api/v1/pokemon/"

//creating a closure, meaning a block of code 'first ()' thats gonna be called whenever we want to
//empty closure and its not returning anything
typealias DownloadComplete = () -> ()