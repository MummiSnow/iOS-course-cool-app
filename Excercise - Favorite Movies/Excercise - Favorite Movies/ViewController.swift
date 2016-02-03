//
//  ViewController.swift
//  Excercise - Favorite Movies
//
//  Created by Mohammed Joseph Petrelli Salameh on 02/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var movieListView: UITableView!
    
    var movies = [Movie]()
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addBtn.setFAIcon(FAType.FAPlusCircle, forState: .Normal)
        tableView.backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 1, alpha: 0.35)
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell") as? MovieCell {
            let movie = movies[indexPath.row]
            cell.configureCell(movie)
            return cell
            
        } else {
            return MovieCell()
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("MovieDetailVC", sender: self)
    }
    
    //SHARING POPUP
//    
//    @IBAction func logAction(sender: UIButton) {
//        let titleString = self.objects.objectAtIndex(sender.tag) as? String
//        
//        let firstActivityItem = "\(titleString!)"
//        let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [firstActivityItem], applicationActivities: nil)
//        
//        self.presentedViewController(presentViewController(activityViewController, animated: true, completion: nil)
//        
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "MovieDetailVC" {
            
            var upcoming: MovieDetailVC = segue.destinationViewController as! MovieDetailVC
            
            let indexPath = self.tableView.indexPathForSelectedRow
            
//            let titleString = self.movies.objectAtIndex(indexPath.row) as? String
//            
//            upcoming.titleString = titleString
            
            tableView.deselectRowAtIndexPath(indexPath!, animated: true)
            
        }
        
    }
    
    
}

