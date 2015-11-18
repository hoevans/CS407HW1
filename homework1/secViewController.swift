//
//  secViewController.swift
//  homework1
//
//  Created by Harrison Oliver Evans on 11/17/15.
//  Copyright (c) 2015 Harrison Oliver Evans. All rights reserved.
//

import UIKit

class secViewController: UIViewController, UITextFieldDelegate {
    
    var scoreFromFirst = ""

    @IBOutlet weak var answer2: UITextField!
    
    @IBAction func submit(sender: AnyObject) {
        
        self.performSegueWithIdentifier("to3rd", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "to3rd" {
            var vc = segue.destinationViewController as? thrViewController
                vc!.scoreFromFirst = scoreFromFirst
                vc!.scoreFromSecond = answer2.text
            
        }
    }
}
