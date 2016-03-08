//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Charles Roncier on 07/03/2016.
//  Copyright © 2016 Charles Roncier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let url = NSURL(string: "http://www.vih.org")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, ErrorType) -> Void in
            // will happen when task is completes
            if let urlContent = data {
                print(urlContent)
            } else {
                //error message
            }
            
        }
        task.resume()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

