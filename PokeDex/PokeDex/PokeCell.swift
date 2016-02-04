//
//  PokeCell.swift
//  PokeDex
//
//  Created by Mohammed Joseph Petrelli Salameh on 03/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    //Outlets
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    //variables/properties
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //corners on the images for the grid
        layer.cornerRadius = 5.0
        
    }
    
    
    //Methods
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
    
    
}
