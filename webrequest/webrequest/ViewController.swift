//
//  ViewController.swift
//  webrequest
//
//  Created by Mohammed Joseph Petrelli Salameh on 01/02/16.
//  Copyright © 2016 Mohammed Joseph Petrelli Salameh. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }
    
    //needed, cause we needed the constraints of the container.
    //If it was in viewDidLoad we would have had a cut Webview
    override func viewDidAppear(animated: Bool) {
    
        //match the container view
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        
    }

    func loadRequest(urlStr: String){
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }
    
    @IBAction func loadSteak(sender: AnyObject) {
        loadRequest("http://www.foodrepublic.com/2013/01/23/what-your-steak-really-says-about-you/")
    }
    //wont work unless it has HTTPS
    //solution is info.plist, NSAppTransportSecurity type dictionary
    //and add NSAllowsArbitraryLoads type bool and the value YES
    @IBAction func loadGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com")
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }

}

