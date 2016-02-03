//
//  ViewController.swift
//  marksTableView
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["https://s-media-cache-ak0.pinimg.com/originals/f1/9a/51/f19a5199180cc1f5c82bb5367fca65b8.jpg", "http://cdn0.lostateminor.com/wp-content/uploads/2009/02/richard-stipl-2.jpg", "http://application.denofgeek.com/images/gb/25bb/gremlins2.jpg", "http://i.telegraph.co.uk/multimedia/archive/01565/blobfish_1565953c.jpg", "http://images.sodahead.com/polls/001805583/5719291704_baby_owl_answer_1_xlarge.jpeg"]
    
    var uglyTitles = ["Man this is uuuuglly", "This one isn't so bad", "I wouldn't want to look like this", "Woooo maan. NO thanks!", "Somebody turn off the screen!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //if we succesfully reused the cell
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            //download image
            if let data = NSData(contentsOfURL: url){
                img = UIImage(data: data)
            } else {
                //if there is no image, use default
                img = UIImage(named: "dog")
            }
            
            cell.configureCell(img, text: uglyTitles[indexPath.row])
            
            
            return cell
        } else {
            return UglyCell()
        }
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }

    


}

