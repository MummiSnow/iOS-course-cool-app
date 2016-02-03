//
//  MovieCell.swift
//  Excercise - Favorite Movies
//
//  Created by Mohammed Joseph Petrelli Salameh on 02/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var imdbLink: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(movie: Movie) {
        movieImg.image = movie.getMovieImg()
        movieTitle.text = movie.movieTitle
        movieDesc.text = movie.movieDescription
        imdbLink.text = movie.imdbLink
    }
    
    

}
