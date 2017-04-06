//
//  ViewController.swift
//  UIFeedback
//
//  Created by dawnofthedebayan on 04/01/2017.
//  Copyright (c) 2017 dawnofthedebayan. All rights reserved.
//

import UIKit
import UIFeedback

class ViewController: UIViewController {
    
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showFeedbackButtonPressed() {
        
        UIFeedback.showFeedback(message: "Tangled Up in Blue", textColor: UIColor.red, backgroundColor: UIColor.green, heightOfView : 100, font : UIFont(name: "HelveticaNeue-Bold",size:30)!, applyShadow : true)

    }
}

