//
//  FirstPopUpViewController.swift
//  PopupExperiments
//
//  Created by Erik Dungan on 6/12/16.
//  Copyright © 2016 Callmeed. All rights reserved.
//

import UIKit

class FirstPopUpViewController: UIViewController {
    
    @IBOutlet var panelView: UIView!
    
    // MARK: UIViewController overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Button action(s) 
    @IBAction func didTapOk(sender: AnyObject) {
        // TIP: If you're using a semi-transparent background (instead of clear)
        //      this looks better if you set animated to FALSE
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    // MARK: UI Configuration
    func configureUI() {
        // In order to have a transparent background and see through 
        // to the presenting VC, these 2 settings are necessary on the view
        // TIP: you can also use a color with alpha such as UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 0.5)
        view.backgroundColor = UIColor.clearColor()
        view.opaque = false
        // You can also perform optional decorations such as round corners & shadows
        setRoundCorners()
        setDropShadow()
        setBorder()
    }
    
    func setRoundCorners() {
        panelView.layer.cornerRadius = 9
    }
    
    func setBorder() {
        panelView.layer.borderWidth = 3.0
        panelView.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    func setDropShadow() {
        panelView.layer.shadowColor = UIColor.blackColor().CGColor
        panelView.layer.shadowOpacity = 0.5
        panelView.layer.shadowOffset = CGSize(width: 0, height: 2)
        panelView.layer.shadowRadius = 1.0

    }
    
}
