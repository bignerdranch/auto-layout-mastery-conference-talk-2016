//
//  ViewController.swift
//  LayoutPriorities
//
//  Created by Stephen Christopher on 2016.04.14.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var JonathanNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelLeadingConstraint.constant = 100

    }

    @IBAction func doThingsToConstraints(sender: UIButton) {
        switch labelLeadingConstraint.constant {
        case 100:
            JonathanNameLabel.text = "Lead Me On"
            labelLeadingConstraint.constant = 200
        case 200:
            JonathanNameLabel.text = "JustPick1OK"
            labelLeadingConstraint.constant = 100
        case 191:
            print("why oh why")
        default:
            fatalError("go away")
        }
    }

}

