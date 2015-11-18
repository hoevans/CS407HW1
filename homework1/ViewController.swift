//
//  ViewController.swift
//  homework1
//
//  Created by Harrison Oliver Evans on 11/16/15.
//  Copyright (c) 2015 Harrison Oliver Evans. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var answer1: UITextField!
    
    
    @IBAction func submit(sender: AnyObject) {
        
        self.performSegueWithIdentifier("to2nd", sender: answer1.text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "to2nd" {
            if let vc = segue.destinationViewController as? secViewController{
                vc.scoreFromFirst = (sender as? String)!
            }
        }
    }
}

