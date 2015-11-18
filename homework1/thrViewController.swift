//
//  thrViewController.swift
//  homework1
//
//  Created by Harrison Oliver Evans on 11/17/15.
//  Copyright (c) 2015 Harrison Oliver Evans. All rights reserved.
//

import UIKit

class thrViewController: UIViewController {
    
    var scoreFromFirst = ""
    
    var scoreFromSecond = ""

    @IBOutlet weak var userScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if scoreFromFirst == "cartman" && scoreFromSecond == "eleven"{
            
            userScore.text = "2/2"
            
        }else if scoreFromSecond == "eleven"{
            
            userScore.text = "1/2"
            
        }else if scoreFromFirst == "cartman"{
            
            userScore.text = "1/2"
            
        }else{
            
            userScore.text = "0/2"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
