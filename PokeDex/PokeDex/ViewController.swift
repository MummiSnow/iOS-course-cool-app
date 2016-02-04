//
//  ViewController.swift
//  PokeDex
//
//  Created by Mohammed Joseph Petrelli Salameh on 03/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
    //Outlets
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar! //needs the searchBar delegate protocol
    
    //Variables
    var pokemons = [Pokemon]()
    var filteredPokemons = [Pokemon]()
    var musicPlayer: AVAudioPlayer!
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        searchBar.delegate = self
        
        //change the return button on the keyboard to done
        searchBar.returnKeyType = UIReturnKeyType.Done
        
        initAudio()
        parsePokemonCSV()
        
    }
    
    
    //Methods
    func initAudio() {
        let path = NSBundle.mainBundle().pathForResource("music", ofType: "mp3")!
        
        do {
            
            musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    func parsePokemonCSV() {
        //path for csv file
        let path = NSBundle.mainBundle().pathForResource("pokemon", ofType: "csv")!
        
        
        do {
            
            let csv = try CSV(contentsOfURL: path)
            //get the rows out of the csv file
            let rows = csv.rows
            
            //iterate through the rows and create pokemon
            for row in rows {
                let pokeId = Int(row["id"]!)!
                let name = row["identifier"]!
                
                //create our pokemon
                let poke = Pokemon(name: name, pokedexId: pokeId)
                
                //add to the list
                pokemons.append(poke)
            }
            
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    
    //MARK - IBActions
    @IBAction func musicBtnPressed(sender: UIButton!) {
        
        if musicPlayer.playing {
            musicPlayer.stop()
            sender.alpha = 0.2
        } else {
            musicPlayer.play()
            sender.alpha = 1.0
        }
        
    }
    
    
    //MARK - UICollection Delegate Methods
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        //to preserve memory and reuses views
        //Grab one that isnt being used and populate it with new data
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell", forIndexPath: indexPath) as? PokeCell {
            
            //indexPath.row = every single item is its own row
            let poke: Pokemon!
            //for search function
            if inSearchMode {
                poke = filteredPokemons[indexPath.row]
            } else {
                poke = pokemons[indexPath.row]
            }
            cell.configureCell(poke)
            
            return cell
            
        } else {
            return UICollectionViewCell()
        }
        
    }
    //for when pression on a item in collectioview
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let poke: Pokemon!
        
        if inSearchMode {
            poke = filteredPokemons[indexPath.row]
        } else {
            poke = pokemons[indexPath.row]
        }
        
        
        //go and switch view
        //REMEMBER TO SET THE SEQUE FROM THE VIEWCONTROLLER (makes a generic segue) AND NOT THE CELL
        //if you want to pass the specific object
        performSegueWithIdentifier("PokemonDetailVC", sender: poke)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if inSearchMode {
            return filteredPokemons.count
        }
        
        return pokemons.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        //size for each grid item
        return CGSizeMake(105, 105)
        
    }
    
    
    //MARK - UISearchBar Delegate Methods
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == nil || searchBar.text == "" {
            inSearchMode = false
            collection.reloadData()
            
            //for getting rid of the keyboard
            view.endEditing(true)
            
        } else {
            //a letter has been typed
            inSearchMode = true
            //make sure that the text in the search bar is all low
            let lower = searchBar.text!.lowercaseString
            //start filtering the pokemons
            //$0 we are gonna grab and element (simliar to var somepokemon = pokemon[21])
            //go through the entire array of pokemons an
            //rangeOfString, it finds and returns the range of the first occurrence of a given string
            filteredPokemons = pokemons.filter({$0.name.rangeOfString(lower) != nil})
            //refresh our collectionView
            collection.reloadData()
            
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "PokemonDetailVC" {
            //grab the destination view
            if let detailsVC = segue.destinationViewController as? PokemonDetailVC {
                //We get the pokemon from the performSegueWithIdentifier where we passed the object
                if let poke = sender as? Pokemon {
                    //set the poke from destination view to the poke in collection view
                    detailsVC.pokemon = poke
                }
            }
        }
    }

}






























