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
    
//    @IBOutlet weak var answer2: UITextField!
//    
//    @IBOutlet weak var score: UILabel!
    
    
    @IBAction func submit(sender: AnyObject) {
//        if answer1?.text == "CARTMAN" && answer2?.text == "ELEVEN" {
//            score?.text = "2/2"
//        } else if answer1?.text == "CARTMAN" {
//            score?.text = "1/2"
//        } else if answer2?.text == "ELEVEN" {
//            score?.text = "1/2"
//        } else {
//            score?.text = "0/2"
//        }
        self .performSegueWithIdentifier("to2nd", sender: answer1?.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("will appear ")
    }
    
    override func viewDidAppear(animated: Bool) {
        print("did appear ")
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print("begin ")
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("end ")
//        answer1?.text = answer1?.text
//        answer2?.text = answer2?.text
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "to2nd" {
            if let vc = segue.destinationViewController as? secViewController{
                vc.scoreFromFirst = (sender as? String)!
            }
        }
    }

}

