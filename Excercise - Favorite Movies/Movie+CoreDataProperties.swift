//
//  Movie+CoreDataProperties.swift
//  Excercise - Favorite Movies
//
//  Created by Mohammed Joseph Petrelli Salameh on 02/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var movieTitle: String?
    @NSManaged var movieDescription: String?
    @NSManaged var imdbLink: String?
    @NSManaged var image: NSData?
    @NSManaged var plot: String?

}
