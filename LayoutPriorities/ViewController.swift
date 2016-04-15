//
//  ViewController.swift
//  LayoutPriorities
//
//  Created by Stephen Christopher on 2016.04.14.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var topTitlePreferredSpacing: NSLayoutConstraint!
    @IBOutlet var JonathanNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        topTitlePreferredSpacing.constant = 80
    }

    @IBAction func doThingsToConstraints(sender: UIButton) {
        let newConstant: CGFloat
        let newText: String
        switch topTitlePreferredSpacing.constant {
        case 80:
            newText = "Jonathan"
            newConstant = 160
        case 160:
            newText = "Blocksom"
            newConstant = 80
        default:
            fatalError("go away")
        }

        self.JonathanNameLabel.text = newText
        self.topTitlePreferredSpacing.constant = newConstant
        UIView.animateWithDuration(2    ) {
            self.view.layoutIfNeeded()
        }

    }

}

