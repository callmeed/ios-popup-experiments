//
//  FirstViewController.swift
//  PopupExperiments
//
//  Created by Erik Dungan on 6/12/16.
//  Copyright © 2016 Callmeed. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: UIViewController overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Button actions & handlers
    @IBAction func didTapShowButton(sender: AnyObject) {
        showPopUp()
    }
    
    // MARK: Pup-up
    func showPopUp() {
        self.performSegueWithIdentifier("FirstPopUpSegue", sender: self)
    }
}

